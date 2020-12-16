
@foreach($data as $value)
    {{$value->id}}
    {{$value->activityName}}
    {{$value->user->name}}
    {{$value->spicalizition->name}}
    {{$value->created_at}}
@endforeach