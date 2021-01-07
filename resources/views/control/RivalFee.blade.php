@extends('layouts.index2')
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"> Rival fee </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{'Processes'}}">Home</a></li>
              <li class="breadcrumb-item active">  Rival fee</li>
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
                <h3 class="card-title">DataTable  Rival fee</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr>
                    <th>  
                    
                    <form action="{{url('rival_fees/update/'.$data['id'])}}" method="post">
                    @csrf
                    <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text">Rival fee</span>
                    </div>
                    <input type="number" value="{{$data['rival_tax']}}" name="rival_fees" class="form-control" aria-label="Amount (to the nearest dollar)">
                    <div class="input-group-append">
                    <input value="Ok" type="submit"  style="bading-lefte:5px" class="btn btn-success btn-sm" />
                    </div>
                  </div>
                     
                    
                    </form>
                    </th> 
                  </tr>
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