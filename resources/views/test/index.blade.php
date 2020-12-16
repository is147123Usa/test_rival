
@foreach($data as $value)
    {{$value->id}}
    {{$value->name}}
    {{$value->created_at}}
@endforeach