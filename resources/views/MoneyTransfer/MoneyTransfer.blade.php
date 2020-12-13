@extends('layouts.index2')
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"> Money transfer </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{'Processes'}}">Home</a></li>
              <li class="breadcrumb-item active">Money transfer</li>
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
                <h3 class="card-title">DataTable Money transfer</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                <table id="example1" class="table table-bordered table-striped">
            
            <tr>
              <th style="width: 30%;">Wallet ID </th>
              <td>
                <label for="exampleInputEmail1">From  </label>
                <input type="number" name="number" class="form-control" id="exampleInputEmail1" placeholder="sender's wallet number">
              </td>
              <td>
              <label for="exampleInputEmail1">to  </label>
                <input type="number" name="number" class="form-control" id="exampleInputEmail1" placeholder="recipient's wallet number ">
              </td>
           </tr>
           <tr>
              <th> Amount</th>
              <td>
                <label for="exampleInputEmail1">Amount</label>
                <input type="number" name="number" class="form-control" id="exampleInputEmail1" placeholder="Enter Amount">
              </td>
              <td>
                <label for="exampleInputEmail1">REAmount  </label>
                <input type="number" name="number" class="form-control" id="exampleInputEmail1" placeholder="Enter REAmount">
              </td>
           </tr>
           <tr>
              <th colspan="2">The reason for transferring the money </th>
              <td>
              <textarea rows="4" cols="50" name="comment" form="usrform">Enter text here...</textarea>
              </td>
           </tr>
           <tr>
              <th colspan="2">Action</th>
                  <td>
                     <span style="background:red; width: 50%;float: right;"> <a style="margin-left: 45%;color: wheat;"href="{{'Processes'}}">Send</a> </span>
                     <span style="width: 50%;float: right; background: greenyellow;"><a style="margin-left: 45%;color: currentcolor;" href="{{'Processes'}}">Review</a></span>
                  </td>
           </tr>
          </table>
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