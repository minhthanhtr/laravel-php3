@extends('master')

@section('title')
    STUDENTS LIST
@endsection


@section('content')


    @if (session()->has('success'))
        <div class="alert alert-success">
            {{
                session()->get('success')
            }}
        </div>
    @endif

    <a href="{{route('students.create')}}" class="btn btn-primary">CREATE</a>


    <table class="table">
        <tr>
            <th>ID</th>
            <th>IMAGE</th>
            <th>CODE</th>
            <th>NAME</th>
            <th>EMAIL</th>
            <th>PHONENUMBER</th>
            <th>CREATED_AT</th>
            <th>UPDATED_AT</th>
            <th>ACTION</th>
        </tr>

        @foreach ( $data as $student )
        <tr>
            <td>{{$student->id}}</td>
            <td><img src="{{asset("storage/$student->image") }}" alt="" width="100px"></td>
            <td>{{$student->code}}</td>
            <td>{{$student->name}}</td>
            <td>{{$student->email}}</td>
            <td>{{$student->phone}}</td>
            <td>{{$student->created_at}}</td>
            <td>{{$student->updated_at}}</td>
            <td>
                <a href="{{route('students.show',$student)}}" class="btn btn-info">SHOW</a>
                <a href="{{route('students.edit',$student)}}" class="btn btn-warning mb-3 mt-3">EDIT</a>
                <form action="{{route('students.destroy',$student)}}" method="post">
                    @csrf
                    @method('DELETE')
                    <button type="submit" onclick="return confirm('Are you sure?')" class="btn btn-danger">DELETE</button>
                </form>
            </td>
        </tr>
        @endforeach


    </table>
    {{$data->links()}}
@endsection
