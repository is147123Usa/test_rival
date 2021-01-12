@extends('layouts.index2')
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">    Quotations items </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{'Processes'}}">Home</a></li>
              <li class="breadcrumb-item active">  Quotation items</li>
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
              .Bordernone{
                border:none;
              }
              button{
                padding:5px;
                margin:5px;
              }
            </style>
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Quotations 
                </h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr>
                    <th>ID </th>
                    <th>Images</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Quantity </th>
                    <th>Total</th>
                    <th>note</th>
                    <th>Issued at</th>
                    <th>Actions</th>
                  </tr>
                  </thead>
                  <tbody>
                  @foreach($qutation_item as $value)
                  <tr>
                    <td>{{$value->id}}</td>
                    <td><a href="{{asset('imgs/'.$value->img)}}" target="_blank"> <img src="{{asset('imgs/'.$value->img)}}" alt="Item_img" class="avatar"> </a>
</td>
                    <td>{{$value->item_desc}}</td>
                    <td>{{$value->price}}</td>
                    <td>{{$value->qty}}</td>
                    <th>{{ $value->qty * $value->price}}</th>
                    <td>{{$value->note}}</td>
                    <td>{{$value->created_at->format('m/d/Y')}}
</td>
                    
                    <td>
                      <a style="margin-left: 25%; " class="btn btn-info" href="{{url('Quotaton/'.$value->qutition_id)}}">view Qutation</a>
                    </td>
                  </tr>
                  @endforeach
                  </tbody>
                  <tfoot>
                  <tr>
                  <th>ID </th>
                    <th>Images</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Quantity </th>
                    <th>note</th>
                    <th>Issued at</th>
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