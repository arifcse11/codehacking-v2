@extends('layouts.admin')

@section('content')
    <h3>All Posts</h3>
    <table class="table">
        <thead>
        <tr>
            <th>Id</th>
            <th>User</th>
            <th>Category</th>
            <th>Photo</th>
            <th>Title</th>
            <th>Body</th>
            <th>Created at</th>
            <th>Updated at</th>
        </tr>
        </thead>
        <tbody>
        @if($posts)
            @foreach($posts as $post)
                <tr>
                    <td>{{$post->id}}</td>
                    <td><a href="{{route('posts.edit',$post->id)}}">{{$post->user->name}}</a></td>
                    <td>{{$post->category['name']}}</td>
                    <td><img height="50" src="{{$post->photo ? $post->photo->file : '//placehold.it/400x400'}}" alt="">
                    </td>
                    <td><a href="{{route('post' ,$post->slug)}}">{{$post->title}}</a></td>
                    <td>{{str_limit($post->body,30)}}</td>
                    <td>{{$post->created_at->diffForHumans()}}</td>
                    <td>{{$post->updated_at->diffForHumans()}}</td>
                </tr>
            @endforeach
        @endif

        </tbody>
    </table>

    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            {{$posts->render()}}
        </div>
    </div>
@endsection