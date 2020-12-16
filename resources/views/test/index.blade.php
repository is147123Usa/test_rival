
@foreach($data as $value)
{{$value->Driver->id}}
{{$value->fees}}
{{$value->created_at}}
@endforeach