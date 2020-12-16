
@foreach($data as $value)
    {{$value->id}}
    {{$value->delivery_fee}}
    {{$value->created_at}}
@endforeach