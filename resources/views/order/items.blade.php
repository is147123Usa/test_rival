@extends('layouts.index2')
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">    Quotation Orders </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{'Processes'}}">Home</a></li>
              <li class="breadcrumb-item active">  Quotation Orders</li>
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
                <h3 class="card-title">Quotations orders List</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Item desc</th>
                    <th >img</th>
                    <th >qty</th>
                    <td style="width:30%">Action</td>
                  </tr>
                  </thead>
                  <tbody>
                  @foreach($items as $value)
                  <tr>
                    <td>{{$value->id}}</td>
                    <td>{{$value->item_desc}}</td>
                    <td>{{$value->qty}}</td>
                    <td><a class="btn btn-success" href="{{url('Quotaton/'.$value->id)}}">View Qutation | Order </a></td>
                  
                  </tr>
                  @endforeach
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>#</th>
                    <th>Item desc</th>
                    <th >qty</th>     
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