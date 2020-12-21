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
                <h3 class="card-title">  Quotation informations</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                 <tr>
                 <center>
                 <a href="{{url('ordersQutitions'.$qutation->id)}}" class="btn btn-success">All Qutation for this order </a>

                 <a href="{{url(''.$qutation->id)}}"  class="btn btn-info">Trader Qutations </a>
                 <a href="{{url('Client_Qutition'.$qutation->id)}}"  class="btn btn-light">All  Client Qutations order</a>

<a href="{{url('Trader_Qutions'.$qutation->id)}}" class="btn btn-info">All Trader Qutations </a></center>
</tr>
                  <tr>
                    <th>Trader Name(s) :</th>
                    <td>{{$qutation->trader->activityName}}</td>

                    <th>Customer Name :</th>
                    <td>{{$qutation->qutation_order->client->name}}</td>
                    <th>delivery Fees:</th>
                    <td>{{$qutation->delivery_fee}}</td>
                  </tr>

                  <tr>
                    <th>Catogery :</th>
                    <td>{{$qutation->qutation_order->cat->name_en}}</td>
                    <th>Include Delivery :</th>
                    <td> @if($qutation->includeDelivery==1 ) {{'Yes'}} @else {{'No'}} @endif </td>
                    <th>TAX : </th>
                    <td>{{$qutation->id}}</td>
                  </tr>


                  <tr>
                  <th>status :</th>
                    <td>
                    <button type="button" class="btn btn-warning" disabled>{{$qutation->status}}</button>
                    </td>

                    <th>trader phone :</th>
                    <td> {{$qutation->trader->user->phone}}
                    </td>
                    <th>Sub-total :</th>
                    <td>{{$qutation->id}}</td>
                  </tr>
                  <tr>
                    <th></th>
                    <td>
                    </td>
                    <th>clients number :</th>
                    <td>
                    {{$qutation->qutation_order->client->phone}}

                    </td>
                    <th>Total :</th>
                    <td>{{$qutation->total}} <span>SAR</span></td>
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
                  @foreach($qutation_item as $value) 
                    <tr style="text-align: center;">
                      <td>{{$value->id}}</td>
                      <td>
                        <img src="{{asset('imgs/'.$value->img)}}" alt="Item_img" class="avatar">
                      </td>
                      <td> {{$value->item_desc}}  </td>
                       
                      <td> {{$value->price}} <span>SAR</span> </td>
                       
                      <td><span class="badge bg-danger">{{$value->qty}} </span></td>
                      <td>{{$value->note}} </td>
                      <td>Actions</td>
                    </tr>
                  @endforeach
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