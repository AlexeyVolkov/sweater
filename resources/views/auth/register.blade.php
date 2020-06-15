<x-master>
    <div class="container mx-auto flex justify-center">
        <div class="row px-12 py-8 bg-gray-200 rounded-xl border border-gray-300">
            <div class="col-md-8">
                <div class="text-bold font-lg mb-4">{{ __('Register') }}</div>

                <x-form method="POST" action="{{ route('register') }}">

                    <div class="mb-6">
                        <label for="name"
                            class="block mb-2 uppercase font-bold text-xs text-gray-700">{{ __('Username') }}</label>
                        <input id="name" type="text" class="border border-gray-400 p-2 w-full" name="username"
                            value="{{ old('username') }}" required autocomplete="username" autofocus>

                        @error('username')
                        <p class="text-red-500 text-xs mt-2">
                            {{ $message }}
                        </p>
                        @enderror
                    </div>

                    <div class="mb-6">
                        <label for="name"
                            class="block mb-2 uppercase font-bold text-xs text-gray-700">{{ __('Name') }}</label>

                        <input id="name" type="text" class="border border-gray-400 p-2 w-full" name="name"
                            value="{{ old('name') }}" required autocomplete="name" autofocus>

                        @error('name')
                        <p class="text-red-500 text-xs mt-2">
                            {{ $message }}
                        </p>
                        @enderror
                    </div>

                    <div class="mb-6">
                        <label for="email"
                            class="block mb-2 uppercase font-bold text-xs text-gray-700">{{ __('E-Mail Address') }}</label>

                        <input id="email" type="email" class="border border-gray-400 p-2 w-full" name="email"
                            value="{{ old('email') }}" required autocomplete="email">

                        @error('email')
                        <p class="text-red-500 text-xs mt-2">
                            {{ $message }}
                        </p>
                        @enderror
                    </div>

                    <div class="mb-6">
                        <label for="password"
                            class="block mb-2 uppercase font-bold text-xs text-gray-700">{{ __('Password') }}</label>

                        <input id="password" type="password" class="border border-gray-400 p-2 w-full" name="password"
                            required autocomplete="new-password">

                        @error('password')
                        <p class="text-red-500 text-xs mt-2">
                            {{ $message }}
                        </p>
                        @enderror
                    </div>

                    <div>
                        <button type="submit" class="px-4 py-2 mr-2 rounded bg-blue-400 text-white hover:bg-blue-500">
                            {{ __('Register') }}
                        </button>
                    </div>
                </x-form>
            </div>
        </div>
    </div>
</x-master>
