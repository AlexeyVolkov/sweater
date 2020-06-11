<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Validation\Rule;
use Illuminate\Http\Request;

class ProfilesController extends Controller
{
    public function show(User $user)
    {
        return view('profiles.show', compact('user'));
    }

    public function edit(User $user)
    {
        abort_if(auth()->user()->isNot($user), 404);

        return view('profiles.edit', compact('user'));
    }

    public function update(User $user)
    {
        $validatedAttributes = request()->validate([
            'username' => [
                'string',
                'required',
                'max:255',
                'alpha_dash',
                Rule::unique('users')->ignore($user)
            ],
            'name' => 'string|required|max:255',
            'background' => 'file',
            'email' => [
                'string',
                'required',
                'max:255',
                'email',
                Rule::unique('users')->ignore($user)
            ],
            'password' => 'string|required|min:6|max:255',
        ]);

        if (request('background')) {
            $validatedAttributes['background'] = request('background')->store('backgrounds');
        }

        $user->update($validatedAttributes);

        return redirect($user->path());
    }
}
