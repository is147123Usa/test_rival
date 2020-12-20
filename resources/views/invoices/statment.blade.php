@extends('layouts.index2')
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"> Wallet </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{'Processes'}}">Home</a></li>
              <li class="breadcrumb-item active">Wallet</li>
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
                <h3 class="card-title">DataTable Wallet</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr>
                   
                  <th>Opreation Desc</th>
                    <th>Opreation Type </th>    
                    <th>depit</th>
                    <th>crdit</th>  
                    <th>Before transaction</th>
                    <th>After transaction</th>
                    <th>Notes</th>
                    <th>Status</th>
                    <th>Wallet ID</th>
                    <th>Issued at</th>
                  </tr>
                  </thead>
                  <tbody>
                  @foreach($statmentRecoreds as $value)
                  <tr>
                    <td>{{$value->OprationDesc}}</td>
                    <td>{{$value->oprationType->name_en}}</td>
                    <td>{{$value->depit}}</td>
                    <td>{{$value->crdit}}</td>
                    <td>{{$value->balance_before}}</td>
                    <td>{{$value->balance_after}}</td>
                    <td> @if($value->notes ==null) empty @else {{$value->notes}} @endif</td>
                    <td>{{$value->status}}</td>
                    <td><button type="button" class="btn btn-info" disabled>{{$value->wallet->wallet_no}}</button>
</td>
                    <td > {{$value->created_at->format('m/d/Y')}}</td>
                  </tr>
                  @endforeach
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>Opreation Desc</th>
                    <th>Opreation Type </th>  
                    <th>depit</th>
                    <th>crdit</th>      
                    <th>Before transaction</th>
                    <th>After transaction</th>
                    <th>Notes</th>
                    <th>Status</th>
                    <th>Wallet ID</th>
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