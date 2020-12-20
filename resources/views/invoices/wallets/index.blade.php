@extends('layouts.index2')
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"> Wallet Invoices List </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{url('Processes')}}">Home</a></li>
            <li class="breadcrumb-item"><a href="{{url('Wallet')}}">Wallet</a></li>
              <li class="breadcrumb-item active"><a href="{{url('Details')}}">Details</a></li>
              <li class="breadcrumb-item active">Invoices List</li>

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
                <h3 class="card-title">Wallet #<span style="color:red">{{$wallet->wallet_no}}</span> Invoices List </h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr>
                   
                    <th>Payment method</th>
                    <th>From: client  </th>  
                    <th>To: Trader  </th>    
                     
                    <th>total</th>
                    <th>status</th>
                    <th>Actions</th>
                  </tr>
                  </thead>
                  <tbody>
                  @foreach($invoices as $value)
                  <tr>
                  <th>{{$value->payment_method}}</th>
                    <th>{{$value->client->name}}</th>  
                    <th>{{$value->trader->activityName}}</th>    
                     
                    
                    <th>{{$value->total}}</th>
                    <th> @if($value->isPaid == 0)<button href="" class="btn btn-danger"disabled> {{'Not Paid '}} </button>@else<button href="" class="btn btn-success"disabled> {{'Paid'}} </button>@endif</th>
                    
                    <td >  <a style="padding: 5px;
    margin: 5px;" class="btn btn-info" href="{{url('Invoice/'.$value->id)}}">view <i class="fas fa-eye"></i>

</a> @if($value->isSuspend == 0)  @else<button href="" class="btn btn-warning" disabled>Suspended</button>@endif</td>
                  </tr>
                  @endforeach
 
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