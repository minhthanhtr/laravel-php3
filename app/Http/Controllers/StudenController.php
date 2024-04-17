<?php

namespace App\Http\Controllers;

use App\Models\Student;
use App\Http\Requests\StoreStudentRequest;
use App\Http\Requests\UpdateStudentRequest;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class StudenController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //Code-logic

        $data = Student::query()->latest('id')->paginate(5);

        return view('students.index',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('students.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreStudentRequest $request)
    {


        $data = $request ->except('image');
        if($request->hasFile('image')){
            $data['image'] = Storage::disk('public')->put('students',$request->file('image'));
            // $data['image']= Storage::put('students',$request->file('image'));
        }
        Student::query()->create($data);
        return redirect()->route('students.index')->with('success','Thao tac thanh cong');


    }

    /**
     * Display the specified resource.
     */
    public function show(Student $student)
    {
        return view('students.show',compact('student'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Student $student)
    {
        return view('students.edit',compact('student'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateStudentRequest $request, Student $student)
    {
    //     $validator = Validator::validate($request->all(),[
    //         'code'=>["required","max:10",Rule::unique('students')->ignore($id)],
    //         'name'=>'required|max:191',
    //         'email'=>"required|max:191|unique:students,email,$id",
    //         'phone'=>'required|max:20',
    //         'image'=>['image',Rule::requiredIf(empty(request('img_url')))],
    //     ]);
        $data = $request ->except('image');
        if($request->hasFile('image')){
            $data['image']= Storage::put('students',$request->file('image'));
        }
        $currentImage = $student->image;

        $student->update($data);
        if($request->hasFile('image') && Storage::exists( $currentImage )){
            Storage::delete($currentImage);
        }

        return back()->with('success','Thao tac thanh cong');

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Student $student)
    {

        if( Storage::exists( $student->image )){
            Storage::delete( $student->image );
        }
        $student->delete();
        return back()->with('success','Thao tac thanh cong');

    }
}
