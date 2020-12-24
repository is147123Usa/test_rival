@extends('layouts.index2')
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">trader Details </h1>
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
    
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
           
            <!-- /.card -->

            <div class="card">
              <div class="card-header">
                <h3 class="card-title">  Trader Details <span style="color: rgb(0, 255, 64);background: #6c757d;">{{$trader->user->name}}</span></h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
            
                  <tr>
                    <th style="width: 30%;">Trader Name</th>
                    <td>{{$trader->user->name}}</td>
                    <th>Activity Name</th>
                    <td>{{$trader->activityName}}</td>
                 </tr>
                 <tr>
                    <th>Spicalizition</th>
                    <td>{{$trader->spicalizition->name_en}}</td>
                    <th>CRN</th>
                    <td>{{$trader->CRN}}</td>
                 </tr>
                 <tr>
                    <th>Address</th>
                    <td>{{$trader->address}} / {{$trader->address_2}}, {{$trader->mailBox}} </td>
                    <th>Email</th>
                    <td>{{$trader->user->email}}</td>
                 </tr>
                 <tr>
                    <th >trader Phone</th>
                    <td>{{$trader->user->phone}}</td> 
                    <th>Trader City</th>
                    <td>{{$trader->user->city->name_en}}</td>
                 </tr>

                 <tr>
                 <th>Trader's drivers quntity</th>
                 <td>{{$statica['drivers_quntity']}}</td>
                 <th>Total Qutations </th>
                 <td>{{$statica['total_qutations']}}</td>
                 </tr>

                 <tr>
                 <th>Total Orders</th>
                 <td>{{$statica['order_qty']}}</td>
                 <th>Actions</th>
                 <td>@if($trader->account_status == 'verified') <a href="{{url('Trader/'.$trader->id.'/Suspend')}}" class="btn btn-info">Suspend</a> @elseif($trader->account_status == 'Suspend') <a href="{{url('Trader/'.$trader->id.'/verified')}}" class="btn btn-info">verifiy </a> @elseif($trader->account_status == 'pending') <a class="btn btn-info" href="{{url('Trader/'.$trader->id.'/verified')}}">Verifiy</a>  @endif </td>
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