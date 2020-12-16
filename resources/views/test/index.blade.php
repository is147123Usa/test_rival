
@foreach($data as $value)
    {{$value->id}}
     {{$value->driver->cabtin_name}}     
    {{$value->created_at}}
@endforeach