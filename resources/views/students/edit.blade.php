@extends('master')

@section('title')
    UPDATE STUDENT: {{$student->name}}
@endsection


@section('content')

@if (session()->has('success'))
<div class="alert alert-success">
    {{
        session()->get('success')
    }}
</div>
@endif
@if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error )
                        <li>
                            {{$error}}
                        </li>
                    @endforeach
                </ul>
            </div>
        @endif
<form action="{{route('students.update',$student)}}" method="POST" enctype="multipart/form-data">
    @csrf
    @method('PUT')
    <div class="mb-3 mt-3">
      <label for="code" class="form-label">Code:</label>
      <input type="text" class="form-control" id="code"
        value="{{$student->code}}"
      name="code" >
    </div>
    <div class="mb-3 mt-3">
        <label for="name" class="form-label">Name:</label>
        <input type="text" class="form-control" id="name"
        value="{{$student->name}}"
        name="name" >
      </div>

      <div class="mb-3 mt-3">
        <label for="email" class="form-label">Email:</label>
        <input type="text" class="form-control" id="email"
        value="{{$student->email}}"
        name="email" >
      </div>

      <div class="mb-3 mt-3">
        <label for="phone" class="form-label">Phone:</label>
        <input type="text" class="form-control" id="phone"
        value="{{$student->phone}}"
        name="phone" >
      </div>

      <div class="mb-3 mt-3">
        <label for="image" class="form-label">Image:</label>
        <input type="file" class="form-control" id="image" name="image">
        <img src="{{asset("storage/$student->image") }}" alt="" width="200px">
        <input type="hidden" name="img_url" value="{{$student->image}}">
      </div>
    <button type="submit" class="btn btn-primary">Submit</button>

  </form>

  <a href="{{route('students.index')}}"  class="btn btn-danger  mt-3">Back to list</a>

@endsection
