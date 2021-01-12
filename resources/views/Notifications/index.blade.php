@extends('layouts.index2')
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"> SendNotification </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{'Processes'}}">Home</a></li>
              <li class="breadcrumb-item active">SendNotification</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
           
            <!-- /.card -->

            <div class="card">
              <div class="card-header">
                <h3 class="card-title">  SendNotification</h3>
                
              </div>
              <!-- /.card-header -->
              <div class="card-body">
              
                <table id="example1" class="table table-bordered table-striped">
                <a href="{{url('Notification/send')}}" class="btn btn-info">Send New Notification</a>
                <thead>
                  <tr>
                    <th>Customer Name</th>
                    <th>Notification</th>
                    <th>Notification En</th> 
                    <th>Body</th>
                    <th>Body En</th>
                    <th> Image </th>
                    <th>  Date </th>
                 
                  </tr>
                  </thead>
                  <tbody>
                  @foreach($notifications as $value)
                  <tr>
                    <td>{{$value->user->name}}</td>
                    <td>{{$value->name}}</td>
                    <td>{{$value->name_en}}</td>
                    <td>{{$value->body}}</td>
                    <td>{{$value->body_en}}</td>
                    <td>
                        <center>
                            <a href="{{asset('imgs/'.$value->img)}}" target="_blank"> <img src="{{asset('imgs/'.$value->img)}}" alt="Item_img" class="avatar"> </a>
                        </center>
                    </td>
                    <td>{{$value->created_at->format('m/d/Y')}}</td>
                 
                  </tr>
                  @endforeach
                  </tbody>
                  <tfoot>
                  <tr>
                  <th>Customer Name</th>
                    <th>Notification</th>
                    <th>Notification En</th> 
                    <th>Body</th>
                    <th>Body En</th>
                    <th> Image </th>
                    <th>  Date </th>
                    
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
  <style>
              .avatar {
                vertical-align: middle;
                width: 69px;
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
    @endsection