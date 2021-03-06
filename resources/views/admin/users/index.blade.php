@extends('layouts.admin')
@section('content')

    <h3>All Users</h3>

    @if(Session::has('delete_user'))
        <p class="bg-danger">{{session('delete_user')}}</p>
        @endif
    <table class="table">
    <thead>
      <tr>
        <th>Id</th>
        <th>Name</th>
          <th>Photo</th>
        <th>Email</th>
          <th>Role</th>
          <th>Status</th>
        <th>Created at</th>
        <th>Updated at</th>
      </tr>
    </thead>
    <tbody>
      @if($users)
      @foreach($users as $user)
      <tr>
        <td>{{$user->id}}</td>
        <td><a href="{{route('users.edit',$user->id)}}">{{$user->name}}</a></td>
          <td>@if($user->photo) <img height="50" src="{{$user->photo->file}}" alt="">@endif</td>
        <td>{{$user->email}}</td>
          <td>{{$user->role['name']}}</td>
          <td>{{$user->is_active == 1 ? 'Active' : 'Not Active'}}</td>
        <td>{{$user->created_at->diffForHumans()}}</td>
        <td>{{$user->updated_at->diffForHumans()}}</td>
      </tr>
      @endforeach
      @endif

    </tbody>
  </table>


@endsection