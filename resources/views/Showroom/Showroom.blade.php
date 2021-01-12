@extends('layouts.index2')
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">    Showroom </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{'Processes'}}">Home</a></li>
              <li class="breadcrumb-item active">  Showroom</li>
            </ol> 
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
        <style>
          .avatar {
            vertical-align: middle;
            width: 50px;
            height: 100px;
            border-radius: 50%;
          }
          .Bordernone{
            border:none;
          }
          button{
            padding:5px;
            margin:5px;
          }
        </style>
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
           
            <!-- /.card -->

            <div class="card">
              <div class="card-header">
                <h3 class="card-title">DataTable Showroom</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr>
                    <th>Seller's name</th>
                    <th>product name</th>
                    <th>Product image</th>
                    <th>products description</th>
                    <th>Status</th>
                    <th>Date added</th>
                    <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>
                  @foreach(App\Models\Sh_room::all() as $value)
                  <tr>

                    <td>{{$value->trader->activityName}}</td>
                    <td>{{$value->name}}</td>
                    <td>
                    <center>
                    <a href="{{asset('imgs/'.$value->img)}}" target="_blank"> <img src="{{asset('imgs/'.$value->img)}}" alt="Item_img" class="avatar"> </a>
                    </center>
                    </td>
                    <td>{{$value->item_desc}}</td>
                    <td><button class="btn btn-warning" disabled>@if($value->status == 'pending' ) {{'قيد الانتظار'}} @elseif($value->status == 'published') {{'تم النشر '}} @elseif($value->status == 'suspend') {{'تم تعليق النشر'}} @elseif($value->status == 'republished') {{'تمت اعادة نشر الاعلان'}} @endif </button></td>

                    <td>{{$value->created_at->format('m/d/Y')}}</td>
                    <td>
                    @if($value->status == 'pending' ) 
                      <a href="{{url('Showroom/published/'.$value->id)}}" class="btn btn-info">نشر</a>
                    @elseif($value->status == 'published' || $value->status == 'republished') 
                      <a href="{{url('Showroom/suspend/'.$value->id)}}" class="btn btn-info">تعليق الاعلان</a>
                    @elseif($value->status == 'suspend')
                    <a href="{{url('Showroom/republished/'.$value->id)}}" class="btn btn-info">اعادة نشر</a> 
                    @endif
                    
                    </td>
                  </tr>
                  @endforeach
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>Seller's name</th>
                    <th>product name</th>
                    <th>Product image</th>
                    <th>products description</th>
                    <th>Status</th>
                    <th>Date added</th>
                    <th>Action</th>
                  </tr>
                  </tfoot>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
 
 
 
  <!-- /.content-wrapper -->
 
  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  

    @endsection