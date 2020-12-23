@extends('layouts.index2')
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">    Quotation Orders </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{'Processes'}}">Home</a></li>
              <li class="breadcrumb-item active">  Quotation Orders</li>
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
                <h3 class="card-title">Quotations orders List</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr>
                    <th>ID</th>
                    <th>Pay Method </th>
                    <th>client </th>
                    <th>Trader</th>
                    <th>deosInclude_delivery</th>
                    <th>total</th>
                    <th>isPaid</th>
                    <th>Issued at</th>
                    <th>status</th>
                    <th>Actions</th>
                  </tr>
                  </thead>
                  <tbody>
                  @foreach($orders as $value)
                  <tr>
                    <td>{{$value->id}}</td>
                    <td>{{$value->payment_method}}</td>
                    <td>{{$value->client->name}}</td>
                    <td>{{$value->trader->activityName}}</td>
                    <td>@if($value->deosInclude_delivery == 0) <h6>No</h6> @else <h6>Yes</h6> @endif   </td>
                    <td>{{$value->total}}</td>
                    <td>@if($value->isPaid == 0) <button disabled class="btn btn-info">Not Paid yet</button> @else <button disabled class="btn btn-success">Paid Successfuly</button> @endif</td>
                     
                    <td>{{$value->created_at->format('m/d/Y')}}</td>  
                     
                    <td><button href="#" class="btn btn-success" disabled>{{$value->status}}</button></td>        
                    <td>
                      <a style="margin-left: 25%; " class="btn btn-info" href="{{url('Orders/'.$value->id)}}">view</a>
                    </td>
                  
                  </tr>
                  @endforeach
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>ID</th>
                    <th>Pay Method </th>
                    <th>client </th>
                    <th>Trader</th>
                    <th>deosInclude_delivery</th>
                    <th>total</th>
                    <th>isPaid</th>
                    <th>Issued at</th>
                    <th>status</th>
                    <th>Actions</th>                  </tr>
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