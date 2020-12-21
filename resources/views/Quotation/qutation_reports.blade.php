@extends('layouts.index2')
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"> Quotation Report </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{'Processes'}}">Home</a></li>
              <li class="breadcrumb-item active">  Quotation</li>
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
                <h3 class="card-title">Quotations List</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr>
                    <th>spicaliztion </th>
                    <th>client's name</th>
                    <th>Seller's name</th>
                    
                    <th>include delivery </th>
                    <th>payment method </th>
                    <th>Issued at</th>
                    <th>Status</th>
                    <th>Actions</th>
                  </tr>
                  </thead>
                  <tbody>
                  @foreach($qutation as $value)
                  <tr>
                    <td>{{$value->qutation_order->cat->name_en}}</td>
                    <td>{{$value->qutation_order->client->name}}</td>
                    <td>{{$value->trader->activityName}}</td>
                    <td>@if($value->includeDelivery == '0') {{'No'}} @else {{'Yes'}} @endif</td>
                    <td>{{$value->qutation_order->payMethod}}</td>
                    <td>10 m</td>
                    <td><button type="button" class="btn btn-warning">{{$value->status}}</button>
</td>
                    
                    <td>
                      <a style="margin-left: 25%; " class="btn btn-info" href="{{url('Quotaton/'.$value->id)}}">view</a>
                    </td>
                  </tr>
                  @endforeach
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>spicaliztion </th>
                    <th>client's name</th>
                    <th>Seller's name</th>
                     
                    <th>include delivery </th>
                    <th>payment method </th>
                    <th>Operation condition</th>
                    <th>Actions</th>
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