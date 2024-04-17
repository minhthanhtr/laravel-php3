<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //Code-logic

        $data = Student::query()->latest('id')->paginate(5);

        return response()->json($data);
    }


    public function store(Request $request)
    {

        $validator = Validator::make($request->all(),[
            'code'=>'required|max:10|unique:students',
            'name'=>'required|max:191',
            'email'=>'required|max:191|unique:students|email',
            'phone'=>'required|max:20',
            'image'=>'required|image',
        ]);
        if($validator->fails()){
            return response()->json([$validator],422);
        }
        $data = $request ->except('image');
        if($request->hasFile('image')){
            $data['image'] = Storage::disk('public')->put('students',$request->file('image'));
            // $data['image']= Storage::put('students',$request->file('image'));
        }
        Student::query()->create($data);
        return response()->json([],204);


    }

    /**
     * Display the specified resource.
     */
    public function show(Student $student)
    {
        return response()->json($student);
    }



    public function update(Request $request, Student $student)
    {
        $validator = Validator::make($request->all(),[
               //
               'code'=>["required","max:10",Rule::unique('students')->ignore($student->id)],
               'name'=>'required|max:191',
               'email'=>"required|max:191|unique:students,email,$student->id",
               'phone'=>'required|max:20',
               'image'=>['image',Rule::requiredIf(empty($student->image))],
        ]);
        if($validator->fails()){
            return response()->json([$validator->errors()],422);
        }
        $data = $request ->except('image');
        if($request->hasFile('image')){
            $data['image']= Storage::put('students',$request->file('image'));
        }
        $currentImage = $student->image;

        $student->update($data);
        if($request->hasFile('image') && Storage::exists( $currentImage )){
            Storage::delete($currentImage);
        }

        return response()->json($student);

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
        return response()->json([],204);

    }
}
