@extends('layouts.index2')
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"> Wallet </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item active">Wallet</li>
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
                <h3 class="card-title">DataTable Wallet</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr>
                  <th>Customer Name</th>
                    <th>Balance</th>
                    <th>Wallet ID </th>      
                    <th>last Activity</th>
                    <th>Status</th>
                    <th>Issues at </th>
                    <th>Actions</th>
                  </tr>
                  </thead>
                  <tbody>
                  @foreach($WalletsList as $value)
                  <tr>
                    <td>{{$value->user->name}}</td>
                    <td>{{$value->balance}}</td>
                     
                    <td>{{$value->wallet_no}}</td>
                    <td>{{$value->lastActivity}}</td>
                    <th>@if($value->isSuspend == 0) <button href="" class="btn btn-success" disabled>Active</button> @else<button href="" class="btn btn-warning" disabled>Suspended</button>@endif</th>
                    <td>{{$value->created_at->format('m/d/Y')}} </td>
                    <td >  <a style="padding: 5px;
    margin: 5px;" class="btn btn-info" href="{{'/Wallet/'}}{{$value->id}}">view</a> </td>
                  </tr>
                  @endforeach
                  </tbody>
                  <tfoot>
                  <tr>
                  <th>Customer Name</th>
                    <th>Balance</th>
                    <th>Wallet ID </th>      
                    <th>last Activity</th>
                    <th>Status</th>
                    <th>Issued at</th>
                    <th>Details</th>
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