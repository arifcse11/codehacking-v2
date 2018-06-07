@extends('layouts.admin')

@section('content')
    <h3>Edit User</h3>
    <div class="col-md-3">
        <img style="max-width: 100%;" src="{{$user->photo ? $user->photo->file : 'http://via.placeholder.com/350x150'}}" alt="">
    </div>

    <div class="col-md-9">
        {!! Form::model($user,['method' => 'PATCH', 'action' => ['AdminUsersController@update',$user->id], 'files' => true]) !!}

        <div class="form-group">
            {!! Form::label('name','Name:') !!}
            {!! Form::text('name',null, ['class' => 'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('email','Email:') !!}
            {!! Form::email('email',null, ['class' => 'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('photo_id','Photo:') !!}
            {!! Form::file('photo_id',null, ['class' => 'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('role_id','Role:') !!}
            {!! Form::select('role_id',[''=>'Choose options'] + $roles, null, ['class' => 'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('is_active','Status:') !!}
            {!! Form::select('is_active',array(1 => 'Active', 0 => 'Not Active'),null, ['class' => 'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::label('password','Password:') !!}
            {!! Form::password('password', ['class' => 'form-control']) !!}
        </div>

        <div class="form-group">
            {!! Form::submit('Update User', ['class' => 'btn btn-primary col-sm-6']) !!}
        </div>

        {!! Form::close() !!}

        {!! Form::open(['method' => 'DELETE', 'action' => ['AdminUsersController@destroy',$user->id]]) !!}

            <div class="form-group">
                {!! Form::submit('Delete User', ['class' => 'btn btn-danger col-sm-6']) !!}
            </div>

            {!! Form::close() !!}

        @include('includes.form_error')
    </div>



@endsection