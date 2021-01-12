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
                <h3 class="card-title">Quotations report List</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr>
                    <th>complain id </th>
                    <th>Qutation Sender</th>
                    <th>Complain sender</th>
                    <th>Complain reason </th>
                    <th>Qutation </th>
                    <th>Issued at</th>
                     
                  </tr>
                  </thead>
                  <tbody>
                 @foreach($report_list as $value)
                  <tr>
                    <td> {{$value->id}}</td>
                    <td>{{$value->sender->activityName}} </td>
                    
                    <td>{{$value->compain_sender->name}}</td>
                    <td> {{$value->reason}}</td>
                    <td><a class="btn btn-light"href="{{url('Quotaton/'.$value->qutation_id)}}">view qutation</a></td>
                    <td>{{$value->created_at->format('m/d/Y')}}</td>
                     
                  </tr>
                @endforeach
                  </tbody>
                  <tfoot>
                  <tr>
                  <th>complain id </th>
                    <th>Qutation Sender</th>
                    <th>Complain sender</th>
                    <th>Complain reason </th>
                    <th>Qutation </th>
                    <th>Issued at</th>
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