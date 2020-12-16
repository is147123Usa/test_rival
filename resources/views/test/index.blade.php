
@foreach($data as $value)
    {{$value->id}}
    {{$value->status}}
    {{$value->sender->name}}
    {{$value->created_at}}
@endforeach