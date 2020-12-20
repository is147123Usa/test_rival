@extends('layouts.index2')
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"> Details </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{url('Wallet')}}">Wallets</a></li>
              <li class="breadcrumb-item">Details</li>
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
          <style>
            .btn{
              padding:5px;
              margin:5px;
            }
          </style>
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">  Wallet Details</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                
                  <tr>
                    <th style="width: 20%;">Wallet ID</th>
                    <td  style="width: 30%;">{{$WalletsList->wallet_no}}</td>
                    <th style="width: 20%;">Wallet Owner</th>
                    <td  style="width: 30%;">{{$WalletsList->user->name}}</td>
                 </tr>
                 <tr>
                 <th style="width: 20%;">balance</th>
                    <td  style="width: 30%;">{{$WalletsList->balance}}</td>
                    <th style="width: 20%;">Last Activity</th>
                    <td  style="width: 30%;">{{$WalletsList->lastActivity}}</td>
                 </tr>
                 <tr>
                    <th style="width:20%">User Type</th>
                     
                    <td  >@if($WalletsList->user->group_id == 1) {{'client'}} @elseif($WalletsList->user->group_id == 2){{'trader'}}@endif</td>
                    <th  > Wallet situation</th>
                    <td  >@if($WalletsList->isSuspend == 0) <button href="" class="btn btn-success" disabled>Active</button> @elseif($WalletsList->isSuspend == 1)<button href="" class="btn btn-warning" disabled>Suspended</button>@endif</td>
                 </tr> 
                 
                 
                
                </table>
                <table>
                 <tr>
                <th style="width:20%;">Actions</th>
                <th style="width:80%;"></th>
                </tr>
                <tr>
                <td  >@if($WalletsList->isSuspend == 1) <button href="" class="btn btn-success" >Active</button> @else<button href="" class="btn btn-warning" >Suspended</button>@endif 
                
                <a class="btn btn-info" href="{{url('/wallet_invoices/'.$WalletsList->user_id)}}">Invoices</a> <a class="btn btn-success" href="{{'Processes'}}">  Wallet statement</a>
                </td>
                <td style="width:20%;"></td>
                <td style="width:80%;">
               
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