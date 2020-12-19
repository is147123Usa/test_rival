@extends('layouts.index2')
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"> Users </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{'Processes'}}">Home</a></li>
              <li class="breadcrumb-item active">Users</li>
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
                <h3 class="card-title">DataTable Users</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr>
                    <th>Users Name</th>
                    <th>Phone</th>
                    <th>Emaile</th>
                    <th>Wallet ID</th>
                    <th>Balance</th>
                     
                    <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>
                  @foreach($users as $value)
                  <tr>
                    <td>{{$value->user->name}}</td>
                    <td>{{$value->user->phone}}</td>
                    <td>{{$value->user->email}}</td>
                    <td>{{$value->wallet_no}}</td>
                    <td>{{$value->balance}}</td>
                    
                     
                    <td  > <a href="{{url('users/')}}{{'/'.$value->user->id}}" class="btn btn-info" >View</a> <button href="" class="btn btn-danger" >delete</button> <button href="" class="btn btn-info" >block</button></td>
                  </tr>
                  @endforeach
                  </tbody>
                  <tfoot>
                  <tr>
                  <th>Users Name</th>
                    <th>Phone</th>
                    <th>Emaile</th>
                    <th>Wallet ID</th>
                    <th>Balance</th>
                     
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