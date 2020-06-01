@extends('layouts.app')

@section('content')

<header class="mb-6 relative">
    <img src="{{ $user->avatar }}" alt="{{ $user->name }}" class="h-56 mx-auto mb-2">

    <div class="flex justify-between items-center mb-4">
        <div>
            <h2 class="font-bold text-2xl mb-w">{{ $user->name }}</h2>
            <p class="text-sm">Joined {{ $user->created_at->diffForHumans() }}</p>
        </div>
        <div>
            <a href="" class="rounded-full border border-gray-300 py-2 px-4 text-black text-xs mr-2">Edit Profile</a>
            <a href="" class="bg-blue-500 rounded-full shadow py-2 px-4 text-white text-xs">Follow me</a>
        </div>
    </div>

    <p class="text-sm">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aut, similique eaque corrupti dolorum
        sit rerum culpa perspiciatis officia odit inventore! Quia nihil sequi illo accusantium dolorum sapiente non
        nostrum placeat.</p>

    <img src="{{ $user->avatar }}" alt="{{ $user->name }}"
        class="h-24 mx-auto mb-2 absolute border border-gray-300 rounded-full"
        style="left:calc(50% - 3rem);top:11rem;background-color: white;">

</header>

@include('_timeline', [
'tweets'=>$user->tweets
])
@endsection
