@extends('layouts.index2')
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">    Disputes </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{'Processes'}}">Home</a></li>
              <li class="breadcrumb-item active">  Disputes</li>
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
                <h3 class="card-title">DataTable Disputes</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr>
                    <th>Customer Name</th>
                    <th>Seller's name</th>
                    <th>Driver's Name(s)</th>
                    <th>Delivery time</th>
                    <th>Status</th>
                    <th>Cause of Dispute</th>
                    <th>action</th>
                  </tr>
                  </thead>
                  <tbody>
                  @foreach($contention as $value)
                  <tr>
                    <td>{{$value->claimant->name}}</td>
                    <td>{{$value->order->trader->activityName}}</td>
                    <td>{{$value->driver->cabtin_name}}</td>
                    <td>{{$value->order->delivery_time}}</td>
                    <td>{{$value->status}}</td>
                    <td>{{$value->complain_reason}}</td>
                      <td><a style="margin-left: 25%; "  class="btn btn-success" href="{{'DisputesDetails'}}">view </a></td>
                  </tr>
                  @endforeach
                  </tbody>
                  <tfoot>
                  <tr>
                  <th>Customer Name</th>
                    <th>Seller's name</th>
                    <th>Driver's Name(s)</th>
                    <th>Delivery time</th>
                    <th>Status</th>
                    <th>Cause of Dispute</th>
                    <th>action</th>
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