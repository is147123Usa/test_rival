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
              <li class="breadcrumb-item"><a href="{{'Processes'}}">Home</a></li>
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
                    <th>created_at</th>
                    <th>Details</th>
                  </tr>
                  </thead>
                  <tbody>
                  @foreach($WalletsList as $value)
                  <tr>
                    <td>{{$value->user->name}}</td>
                    <td>{{$value->balance}}</td>
                     
                    <td>{{$value->wallet_no}}</td>
                    
                    <td>{{$value->lastActivity}}</td>
                    <td>{{$value->created_at}}</td>
                    <td >  <a style="padding: 5px;
    margin: 5px;" class="btn btn-info" href="{{'/Wallet/'}}{{$value->id}}">view</a><a style="padding:5px;margin:5px;"class="btn btn-warning" href="{{'Details'}}">suspend</a> <a style="padding:5px;margin:5px;"class="btn btn-warning" href="{{'Details'}}">Unsuspend</a></td>
                  </tr>
                  @endforeach
                  </tbody>
                  <tfoot>
                  <tr>
                  <th>Customer Name</th>
                    <th>Balance</th>
                    <th>Wallet ID </th>      
                    <th>last Activity</th>
                    <th>created_at</th>
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