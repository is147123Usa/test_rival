
@foreach($data as $value)
{{$value->driver->id}}
{{$value->fees}}
{{$value->created_at}}
@endforeach