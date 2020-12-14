@extends('layouts.index2')
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"> Contact </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{'Processes'}}">Home</a></li>
              <li class="breadcrumb-item active"> Contact</li>
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
                <h3 class="card-title">Contact</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
            
                  <tr>
                    <th style="width: 30%;">From</th>
                    <td>-</td>
                   
                 </tr>
                 <tr>
                    <th>Email</th>
                    <td>-</td>
                    
                 </tr>
                 <tr>
                    <th>Phone</th>
                    <td>-</td>
                    
                 </tr> 
                 <tr>
                    <th>Massage</th>
                    <td>-</td>
                     
                 </tr>
                 <tr>
                    <th>answer</th>
                    <td><textarea rows="2" cols="100" name="comment" form="usrform" placeholder="Enter text here..."></textarea></td>
                 </tr>
                 <tr>
                    <th>Action          </th>
                        <td>
                           <span style="width: 20%;float: right; background: greenyellow;"><a style="margin-left: 35%;color: currentcolor;" href="{{'Processes'}}">Send</a></span>
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