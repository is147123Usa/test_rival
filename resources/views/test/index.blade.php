
@foreach($data as $value)
    {{$value->id}}
    {{$value->id}}
    {{$value->user->name}}
    {{$value->spicalizition->name}}

    {{$value->created_at}}
@endforeach