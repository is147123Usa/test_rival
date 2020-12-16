
@foreach($data as $value)
{{$value->id}}
{{$value->name}}
{{$value->name_en}}
{{$value->country->name}}
{{$value->created_at}}

@endforeach