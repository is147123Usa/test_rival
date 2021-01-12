@extends('layouts.index2')
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Driver Details </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{'Processes'}}">Home</a></li>
              <li class="breadcrumb-item"><a href="{{'Users'}}">Traders</a></li>
              <li class="breadcrumb-item active">trader Details</li>
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
                <h3 class="card-title">  </h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
            
                  <tr>
                    <th style="width: 30%;">Driver name :</th>
                    <td>{{$driver->cabtin_name}}</td>
                    <th>Driver phone</th>
                    <td>{{$driver->user->phone}}</td>
                 </tr>

                 <tr>
                    <th>License number : </th>
                    <td>{{$driver->license_no}}</td>
                    <th>SSL :</th>
                    <td>{{$driver->ssl}}</td>
                 </tr>
                 <tr>
                    <th>Registered by :</th>
                    <td>{{$driver->trader->user->name}} | {{$driver->trader->activityName}} </td>
                    <th>Trader phone</th>
                    <td>{{$driver->trader->user->phone}}</td>
                 </tr>


                 

                 
                 
                </table>
                 <br>
                <table id="example1" class="table table-bordered table-striped">
                <tr>
                 <th>Images</th>
                 </tr>
                 <tr>
                    <th>Driver image</th>
                    <th>licesnse image </th> 
                    <th>identity prove </th>
                     <th>Car image </th>
                     <th>Car registertion img </th>
                     <th>Plate img </th>
                 </tr>

                 <tr>
                  <th><a href="{{asset('imgs/'.$imges->avatar)}}" target="_blank"> <img src="{{asset('imgs/'.$imges->avatar)}}" alt="Item_img" class="avatar"> </a></th>
                  <td><a href="{{asset('imgs/'.$imges->licesnse_image)}}" target="_blank"> <img src="{{asset('imgs/'.$imges->licesnse_image)}}" alt="Item_img" class="avatar"> </a></td>
                  <th><a href="{{asset('imgs/'.$imges->identitiyProve_driver)}}" target="_blank"> <img src="{{asset('imgs/'.$imges->identitiyProve_driver)}}" alt="Item_img" class="avatar"> </a></th>
                  <td><a href="{{asset('imgs/'.$imges->carImage)}}" target="_blank"> <img src="{{asset('imgs/'.$imges->carImage)}}" alt="Item_img" class="avatar"> </a></td>
                  <td><a href="{{asset('imgs/'.$imges->identitiyProve_car)}}" target="_blank"> <img src="{{asset('imgs/'.$imges->identitiyProve_car)}}" alt="Item_img" class="avatar"> </a></td>

                  <td><a href="{{asset('imgs/'.$imges->plant_no)}}" target="_blank"> <img src="{{asset('imgs/'.$imges->plant_no)}}" alt="Item_img" class="avatar"> </a></td>
                 </tr>
                
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