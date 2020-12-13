@extends('layouts.index2')
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">    Quotation informations</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{'Processes'}}">Home</a></li>
              <li class="breadcrumb-item"><a href="{{'Quotaton'}}">Quotation</a></li>
              <li class="breadcrumb-item active">  Quotation informations</li>
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
                <h3 class="card-title">  Quotation informations</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                 
                  <tr>
                    <th>Customer Name</th>
                    <th>Seller's name</th>
                    <th>Driver's Name(s)</th>
                  </tr>
                 
                 
                  <tr>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>                  
                  </tr>
                  <tr>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>                  
                  </tr>
               
               
                  <tr>
                  <th>Customer Name</th>
                    <th>Seller's name</th>
                    <th>Driver's Name(s)</th>                 
                  </tr>
               
                </table>
              </div>
              <!-- /.card-body -->
            </div>
               <p> Time delay : <span style="color:red;"> 14:58</span></p>
               <p> Operation condition : <span style="color:red;"> Rejected by the customer</span></p>

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