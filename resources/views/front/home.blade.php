@extends('layouts.blog-home')

@section('content')
    <!-- Blog Entries Column -->
    <div class="col-md-8">
        
        
        @if($posts)

            @foreach($posts as $post)


        <!-- First Blog Post -->
        <h2>
            <a href="post/{{$post->slug}}">{{$post->title}}</a>
        </h2>
        <p class="lead">
            by <a href="index.php">{{$post->user->name}}</a>
        </p>
        <p><span class="glyphicon glyphicon-time"></span> Posted {{$post->created_at->diffForHumans()}}</p>
        <hr>
        <img class="img-responsive" src="{{$post->photo ? $post->photo->file : ''}}" alt="">
        <hr>
        <p>{!! str_limit($post->body,30) !!}</p>
        <a class="btn btn-primary" href="post/{{$post->slug}}">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>

        <hr>

        @endforeach

            @endif



        <!-- Pager -->

        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                {{$posts->render()}}
            </div>
        </div>


    </div>
    @include('includes.front_sidebar')
@endsection
