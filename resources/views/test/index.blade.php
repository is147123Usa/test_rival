@foreach($data as $value)
    {{$value->wallet->wallet_no}}
    {{$value->created_at}}
@endforeach