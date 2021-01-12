@extends('layouts.index2')
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"> Notifications </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{'Processes'}}">Home</a></li>
              <li class="breadcrumb-item active"> Notifications</li>
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
                <h3 class="card-title">Notifications</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <form action="{{url('Notifications/push')}}" method="post" enctype="multipart/form-data">
                  @csrf
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <label class="input-group-text" for="inputGroupSelect01">To</label>
                    </div>
                      <select name="target_users" class="custom-select" id="inputGroupSelect01">
                        <option value="allUsers" selected>All Users</option>
                        @foreach(App\Models\User::all() as $value)
                        <option value="{{$value->id}}">{{$value->name}}</option>
                        @endforeach
                      </select>
                  </div>

                <div class="input-group input-group-sm mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="inputGroup-sizing-sm">Massage's title</span>
                  </div>
                  <input type="text" name="title"class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
                </div>

                <div class="input-group input-group-sm mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="inputGroup-sizing-sm">Massage's title En</span>
                  </div>
                  <input type="text" name="title_en" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
                </div>

                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text">Body </span>
                  </div>
                  <textarea name="body" class="form-control" aria-label="With textarea"></textarea>
                </div>
                <br>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text">Body En</span>
                  </div>
                  <textarea name="body_en" class="form-control" aria-label="With textarea"></textarea>
                </div>
                  <br>
                <div class="input-group">
                  <div class="custom-file">
                    <input name="image" type="file" class="custom-file-input" id="inputGroupFile04">
                    <label class="custom-file-label" for="inputGroupFile04">Images</label>
                  </div>
                </div>
                <input style="padding:5px;margin:10px;float:right;"class="btn btn-success" type="submit" value="إرسال الاشعار">
                </form>
                </div>
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