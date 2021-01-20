@extends('layouts.index2')
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"> Traders </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{'Processes'}}">Home</a></li>
              <li class="breadcrumb-item active">Traders</li>
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
                <h3 class="card-title">DataTable Traders</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr>
                  <button type="button" class="btn btn-success">Traders</button>

                  </tr>
                  <tr>
                    <th>Traders name </th>
                    <th>Activity Name</th>
                    <th>CRN</th>
                    <th>Trader Status</th>
                    <th>spicalizition_id</th>
                    <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>
                  @foreach($traders as $value)
                  <tr>
                    <td>{{$value->user->name}}</td>
                    <td>{{$value->activityName}}</td>
                    <td>{{$value->CRN}}</td>
                    <td><button class="btn btn-success" disabled>{{$value->status}}</button></td>
                    <td>{{$value->spicalizition->name_en}}</td>
                    <td> <a href="{{url('Trader/'.$value->id)}}" class="btn btn-info" disabled>view </a> </td>
                     
                  </tr>
                  @endforeach
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>Traders name </th>
                    <th>Activity Name</th>
                    <th>CRN</th>
                    <th>Account Status</th>
                    <th>spicalizition_id</th>
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