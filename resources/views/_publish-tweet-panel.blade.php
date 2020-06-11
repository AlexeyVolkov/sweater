<div class="border border-blue-400 rounded-xl py-6 px-8 mb-8">
    <form action="/tweets" method="post">
        @csrf

        <textarea name="body" id="" class="w-full" placeholder="What's up doc? Talk" required maxlength="255"
            autofocus></textarea>
        @error('body')
        <p class="text-red-500 text-sm mt-2">{{ $message }}</p>
        @enderror

        <hr class="my-4">

        <footer class="flex justify-between items-center">
            <img src="{{ auth()->user()->avatar }}" alt="{{ auth()->user()->name }} Avatar"
                class="rounded-full h-12 mr-2">
            <button type="submit"
                class="bg-blue-500 hover:bg-blue-600 rounded-lg shadow h-10 px-10 text-white text-sm">Publish</button>
        </footer>

    </form>
</div>
