<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreStudentRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            //Validate tại request::
            'code'=>'required|max:10|unique:students',
            'name'=>'required|max:191',
            'email'=>'required|max:191|unique:students|email',
            'phone'=>'required|max:20',
            'image'=>'required|image',
        ];
    }
}
