
@foreach($data as $value)
    {{$value->id}}
    {{$value->user->name}}
    {{$value->created_at}}
@endforeach