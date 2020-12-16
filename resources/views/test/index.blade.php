
@foreach($data as $value)
{{$value->order->operation_code}}
{{$value->fees}}
{{$value->created_at}}
@endforeach