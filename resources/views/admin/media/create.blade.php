@extends('layouts.admin')

@section('styles')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.4.0/min/dropzone.min.css">
    @endsection

@section('content')
   <h3>Upload Media</h3>

   <div class="col-md-4">
       {!! Form::open(['method' => 'POST', 'action' => 'AdminMediaController@store' , 'class' => 'dropzone']) !!}


       {!! Form::close() !!}
   </div>





@endsection


@section('scripts')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.4.0/min/dropzone.min.js"></script>
    @endsection