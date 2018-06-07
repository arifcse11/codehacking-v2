@extends('layouts.admin')

@section('content')

    <form action="delete/media" method="post" class="form-inline">
        {{csrf_field()}}
        {{method_field('delete')}}
        <div class="form-group">
            <select name="checkBoxArray" id="" class="form-control">
                <option value="">Delete</option>
            </select>
        </div>

        <div class="form-group">
            <input type="submit" name="delete_all" class="btn btn-primary" value="Submit">
        </div>

        <table class="table">
            <thead>
            <tr>
                <th><input type="checkbox" id="options"></th>
                <th>Id</th>
                <th>Photo</th>
                <th>Created at</th>
            </tr>
            </thead>
            <tbody>
            @if($photos)
                @foreach($photos as $photo)
                    <tr>
                        <td><input class="checkboxes" type="checkbox" name="checkBoxArray[]" value="{{$photo->id}}">
                        </td>
                        <td>{{$photo->id}}</td>
                        <td><img height="50" src="{{$photo->file}}" alt=""></td>
                        <td>{{$photo->created_at->diffForHumans()}}</td>
                    </tr>
                @endforeach
            @endif

            </tbody>
        </table>

    </form>

    <div class="row">
        <div class="col-md-8">
            {{$photos->render()}}
        </div>
    </div>
@endsection




@section('scripts')
    <script>
        $(document).ready(function () {

            $('#options').click(function () {

                if (this.checked) {
                    $('.checkboxes').each(function () {
                        this.checked = true;
                    });
                } else {
                    $('.checkboxes').each(function () {
                        this.checked = false;
                    });
                }
            });

        });
    </script>
@endsection