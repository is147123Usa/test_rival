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
                <h3 class="card-title">  Order informations</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                
                  <tr>
                    <th>Trader Name(s) :</th>
                    <td>{{$order->trader->activityName}}</td>

                    <th>Customer Name :</th>
                    <td>{{$order->client->name}}</td>
                    <th>delivery Fees:</th>
                    <td>{{$order->delivery_fees}}</td>
                  </tr>

                  <tr>
                    <th>Catogery :</th>
                    <td>{{$order->qutation->qutation_order->cat->name_en}}</td>
                    <th>Include Delivery :</th>
                    <td> @if($order->deosInclude_delivery==1 ) {{'Yes'}} @else {{'No'}} @endif </td>
                    <th>Rival Fees : </th>
                    <td>{{$order->rival_fees}}</td>
                  </tr>


                  <tr>
                  <th>status :</th>
                    <td>
                    @if($order->status =='panding')
                    <button type="button" class="btn btn-warning" disabled>{{$order->status}}</button>
                    @else
                    <button type="button" class="btn btn-success" disabled>{{$order->status}}</button>
                    @endif
                    
                    </td>

                    <th>trader phone :</th>
                    <td> {{$order->trader->user->phone}}
                    </td>
                    <th>Sub-total :</th>
                    <td>{{$order->sub_total}}  <span style="color:red"> </td>
                  </tr>
                  <tr>
                    <th></th>
                    <td>
                    </td>
                    <th>clients number :</th>
                    <td>
                    {{$order->client->phone}}

                    </td>
                    <th>Total :</th>
                    <td>{{$order->total}} <span>SAR</span></td>
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
                    <tr style="text-align: center;">
                      
                      <th>#</th>
                      <th>image</th>
                      <th>Item desc</th>
                      <th>price</th>
                      <th >qty</th>
                      <th>total</th>
                    </tr>
                  </thead>

                  <tbody>
                  @foreach($items as $value) 
                    <tr style="text-align: center;">
                      <td>{{$value->id}}</td>
                      <th><a href="{{asset('imgs/'.$value->img)}}" target="_blank"> <img src="{{asset('imgs/'.$value->img)}}" alt="Item_img" class="avatar"> </a></th>
                      <td>{{$value->item_desc}} </td>
                      <td>{{$value->price}}  </td>
                      <td><span class="badge bg-danger">{{$value->qty}} </span></td>
                      <td>{{ $value->qty * $value->price}}</td>
                      
                    </tr>
                    
                  @endforeach
                  </tbody>
                  <thead>                  
                    
                  </thead>
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