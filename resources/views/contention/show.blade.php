@extends('layouts.index2')
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">     Disputes Details </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{'Processes'}}">Home</a></li>
              <li class="breadcrumb-item"><a href="{{'Disputes'}}">Disputes</a></li>
              <li class="breadcrumb-item active">  Disputes Details</li>
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
                <h3 class="card-title">   Disputes Details</h3>
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
                   <td>{{$data->claimant->name}}</td>
                   <td>{{$data->order->trader->activityName}}</td>
                   <td>{{$data->driver->cabtin_name}}</td>                  
                 </tr>
                 
                 <tr>
                   <td >Cause of Disputes</td>
                   <td colspan="2">{{$data->complain_reason}}</td>          
                 </tr>
                 <form action="{{url('Contentions')}}" method="post">
                 @csrf
                 <tr>

                 <input style="display:none;" type="text" value="{{$data->id}}" name="con_id" class="form-control" >

                   <td>Investigation</td>
  
                   <td colspan="2"><textarea rows="2" cols="100" name="Investigation" placeholder="Enter text here...">{{$data->sup_investigtion}}</textarea></td>                 
                 </tr>
                 
                 <tr>
                   <td>Investigator's recommendation</td>
                   <td colspan="2"><textarea rows="2" cols="100" name="recommendation"  placeholder="Enter text here...">{{$data->sup_commendation}}</textarea></td>                        
                 </tr>
                
              
               </table>
              </div>
              <!-- /.card-body -->
               <input style="width: 25%;margin-left: auto; margin-right: auto;margin-bottom: 10px; "  class="btn btn-block btn-outline-success btn-sm"  value="Closing Disputes" type="submit">
              </form>
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