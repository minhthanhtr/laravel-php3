@extends('master')

@section('title')
    DETAIL STUDENT: {{$student->name}}
@endsection


@section('content')



    <table class="table">

        <tr>
            <th>Field</th>
            <th>Value</th>
        </tr>
        @foreach ($student->toArray() as $field => $value)

        <tr>
            <td>{{$field}}</td>
            <td>
                @php
                    switch ($field) {
                        case 'image':
                            $url = asset("storage/$student->image");
                            echo "<img src=\"$url\" width=\"100px\" alt=\"\">";
                            break;

                        default:
                            echo $value;
                            break;
                    }
                @endphp


            </td>
        </tr>

        @endforeach

    </table>
    <a href="{{route('students.index')}}"  class="btn btn-danger  mt-3">Back to list</a>

@endsection
