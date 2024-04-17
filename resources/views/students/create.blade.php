@extends('master')

@section('title')
    CREATE NEW STUDENT
@endsection


@section('content')

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

<form action="{{route('students.store')}}" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="mb-3 mt-3">
      <label for="code" class="form-label">Code:</label>
      <input type="text" class="form-control" id="code" name="code" value="{{old('code')}}" placeholder="Enter code.......">
    </div>
    <div class="mb-3 mt-3">
        <label for="name" class="form-label">Name:</label>
        <input type="text" class="form-control" id="name" name="name" value="{{old('name')}}" placeholder="Enter name.......">
      </div>

      <div class="mb-3 mt-3">
        <label for="email" class="form-label">Email:</label>
        <input type="text" class="form-control" id="email" name="email"value="{{old('email')}}" placeholder="Enter email.......">
      </div>

      <div class="mb-3 mt-3">
        <label for="phone" class="form-label">Phone:</label>
        <input type="text" class="form-control" id="phone" name="phone"value="{{old('phone')}}" placeholder="Enter phone.......">
      </div>

      <div class="mb-3 mt-3">
        <label for="image" class="form-label">Image:</label>
        <input type="file" class="form-control" id="image" name="image">
      </div>
    <button type="submit" class="btn btn-primary">Submit</button>

  </form>

  <a href="{{route('students.index')}}"  class="btn btn-danger  mt-3">Back to list</a>

@endsection
