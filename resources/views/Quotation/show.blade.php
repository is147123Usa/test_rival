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
            <style>
              .avatar {
                vertical-align: middle;
                width: 50px;
                height: 100px;
                border-radius: 50%;
              }
            </style>
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">  Quotation informations</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                 
                  <tr>
                    <th>Customer Name</th>
                    <td>Ashraf</td>
                    <th>Trader Name(s)</th>
                    <td>AL-MNSAH</td>
                  </tr>

                  <tr>
                    <th>Catogery</th>
                    <td>Offices and furnture</td>
                    <th>ORDER ID </th>
                    <td><a href="#" class="btn btn-primary btn-lg disabled" role="button" aria-disabled="true">{{$qutation->id}}</a>
</td>
                  </tr>


                  <tr>
                    <th>Total </th>
                    <td>200 <span>SAR</span></td>
                    <th>status</th>
                    <td>
                    <button type="button" class="btn btn-warning">panding</button>

                    </td>
                  </tr>
               
               
                  
               
                </table>
              </div>
        
              <!-- /.card-body -->
            </div>
            
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Qutaion Items</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table class="table table-bordered">
                  <thead>                  
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>img</th>
                      <th>Item desc</th>
                      <th>Price</th>
                      <th >qty</th>
                      <th >note</th>
                      <th>Actions</th>
                    </tr>
                  </thead>

                  <tbody>
                    <tr style="text-align: center;">
                      <td>1.</td>
                      <td>
                        <img src="{{asset('imgs/char.jpg')}}" alt="Avatar" class="avatar">
                      </td>
                      <td> Offace Chair </td>
                       
                      <td> 230 <span>SAR</span> </td>
                       
                      <td><span class="badge bg-danger">1</span></td>
                      <td>No Notes</td>
                      <td>Actions</td>
                    </tr>
                  </tbody>
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