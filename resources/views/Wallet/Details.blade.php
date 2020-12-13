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
              <li class="breadcrumb-item"><a href="{{'Processes'}}">Home</a></li>
              <li class="breadcrumb-item"><a href="{{'Wallet'}}">Wallet</a></li>
              <li class="breadcrumb-item active"> Details</li>
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
                <h3 class="card-title">  Wallet Details <span style="color: rgb(0, 255, 64);background: #6c757d;">Mohamed</span></h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
            
                  <tr>
                    <th style="width: 30%;">Wallet ID</th>
                    <td>-</td>
                    <td>-</td>
                 </tr>
                 <tr>
                    <th>Balance</th>
                    <td>-</td>
                    <td>-</td>
                 </tr>
                 <tr>
                    <th>transfer Receive moneyte</th>
                    <td>-</td>
                    <td><a style="margin-left: 45%; " href="{{'MoneyTransferWD'}}">Details</a></td>
                 </tr> 
                 <tr>
                    <th>Invoices</th>
                    <td>-</td>
                    <td><a style="margin-left: 45%; " href="{{'Processes'}}">Details</a></td>
                 </tr>
                 <tr>
                    <th colspan="2">Wallet situation </th>
                    <td>-</td>
                 </tr>
                 <tr>
                    <th colspan="2">Action          </th>
                        <td>
                           <span style="background:red; width: 50%;float: right;"> <a style="margin-left: 45%;color: wheat;"href="{{'Processes'}}">Stop</a> </span>
                           <span style="width: 50%;float: right; background: greenyellow;"><a style="margin-left: 45%;color: currentcolor;" href="{{'Processes'}}">active</a></span>
                        </td>
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