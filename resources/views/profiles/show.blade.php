@extends('layouts.app')

@section('content')

<header class="mb-6 relative">
    <div class="relative ">
        <img src="{{ $user->background }}" alt="{{ $user->name }}" class="h-56 mx-auto mb-2">
        <img src="{{ $user->avatar }}" alt="{{ $user->name }}"
            class="h-24 mx-auto mb-2 absolute border border-gray-300 rounded-full bottom-0 transform -translate-x-1/2 translate-y-1/2 bg-white"
            style="left: 50%">
    </div>

    <div class="flex justify-between items-center mb-6">
        <div>
            <h2 class="font-bold text-2xl mb-w">{{ $user->name }}</h2>
            <p class="text-sm">Joined {{ $user->created_at->diffForHumans() }}</p>
        </div>
        <div class="flex">

            @can('edit', $user)
            <a href="{{ $user->path('edit') }}"
                class="rounded-full border border-gray-300 py-2 px-4 text-black text-xs mr-2">Edit Profile</a>
            @endcan

            @if (auth()->user()->isNot($user))
            <x-form methode="POST" action="/profiles/{{ $user->username }}/follow">
                <button type="submit" class="bg-blue-500 rounded-full shadow py-2 px-4 text-white text-xs">
                    {{ auth()->user()->isFollowing($user) ? 'Unfollow' : 'Follow' }}
                </button>
            </x-form>
            @endif

        </div>
    </div>

    <p class="text-sm">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aut, similique eaque corrupti dolorum
        sit rerum culpa perspiciatis officia odit inventore! Quia nihil sequi illo accusantium dolorum sapiente non
        nostrum placeat.</p>



</header>

@include('_timeline', [
'tweets'=>$user->tweets
])
@endsection
