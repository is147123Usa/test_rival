@extends('layouts.index2')
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">    Settings </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{'Processes'}}">Home</a></li>
              <li class="breadcrumb-item active">  Settings</li>
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
                .btn{
                  margin:5px;
                }
            </style>
            <div class="card">
              <div class="row" style="margin: 0 auto;">
                <a href="{{url('Settings/country')}}" class="btn btn-warning" >country</a>
                <a href="{{url('Settings/catogery')}}" class="btn btn-success">cat</a>
                <a href="{{url('Settings/proveType')}}" class="btn btn-info">prove type </a> 
                <a href="{{url('Settings/city')}}" class="btn btn-info">City </a> 
              </div>
            </div>
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Countries List</h3>
              </div>
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>ID</th>
                  <th>Name</th>
                  <th>Name En</th>
                </tr>
                </thead>
                <tbody>
                  @foreach($payload as $value)
                  <tr>
                    <td>{{$value->id}}</td>
                    <td>{{$value->name_en}}</td>
                    <td>{{$value->name}}</td>
                  </tr>
                  @endforeach
                </tbody>
                <tfoot>
                 
                <tr>
                <th>ID</th>
                  <th>Name En</th>
                  <th>Name </th>
                </tr>
                
                </tfoot>
              </table>
               
              <!-- /.card-body -->
            </div>
            <br>

            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <form>
              <div class="form-group">
                <label for="exampleFormControlSelect1"> select table </label>
                <select name="selectv" onchange="checkAvailable()" class="form-control" id="selectv">
                  <option value="country">Country Table</option>
                  <option value="city">City Table</option>
                  <option value="catogery">Catogery Table</option>
                  <option value="prove">Prove Type Table</option>
                </select>
              </div>
              <div class="form-group">
                <label for="exampleFormControlInput1">Name</label>
                <input type="text" name="name" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
              </div>

              <div class="form-group">
                <label for="exampleFormControlInput1">Name en</label>
                <input type="text"  name="name_en" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
              </div>
              
              <div style="display:none" class="form-group" id="countiner">
                <label for="exampleFormControlSelect1"> Country </label>
                <select name="selectv" onchange="checkAvailable()" class="form-control" id="selectv">
                  <option >Select Country</option>
                  <option>City Table</option>
                </select>
              </div>
            
            </form>
          </div>
        </div>
      </div>
      <!-- /.container-fluid -->
    </section>
 
 
 
  <!-- /.content-wrapper -->
 
  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  
      <script>
          function checkAvailable(){
            var input = $('[name=selectv]').val();
            var city='city';
            if(input == city){
               $("#countiner").show();
              console.log($('[name=selectv]').val());
            }else{
              $("#countiner").hide();
            }
            
               
              
              //console.log($('[name=selectv]').val());
              //console.log($('[name=time_m_from]').val());
              // console.log($('[name=end_date]').val() == '');
              // console.log($('[name=end_date]').val() == '');
          }
    </script>
    @endsection