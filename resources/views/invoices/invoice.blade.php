@extends('layouts.index2')
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Invoice</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{'Processes'}}">Home</a></li>
              <li class="breadcrumb-item"><a href="{{'Users'}}">Users</a></li>
              <li class="breadcrumb-item"><a href="{{'UsersDetails'}}">User Details</a></li>
              <li class="breadcrumb-item active">User Invoice</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="callout callout-info">
              <h5><i class="fas fa-info"></i> Note:</h5>
              This page has been enhanced for printing. Click the print button at the bottom of the invoice to test.
            </div>


            <!-- Main content -->
            <div class="invoice p-3 mb-3">
              <!-- title row -->
              <div class="row">
                <div class="col-12">
                  <h4>
                    <i class="fas fa-globe"></i> Rival
                    <small class="float-right">Date: {{$invoice->created_at->format('m/d/Y')}}</small>
                  </h4>
                </div>
                <!-- /.col -->
              </div>
              <!-- info row -->
              <div class="row invoice-info">
                <div class="col-sm-4 invoice-col">
                  From
                  <address>
                  <strong>{{$invoice->client->name}}</strong><br>
                    Phone: {{$invoice->client->phone}}<br>
                    Email: {{$invoice->client->email}}
                  </address>
                </div>
                <!-- /.col -->
                <div class="col-sm-4 invoice-col">
                  To
                  <address>
                    <strong>{{$invoice->trader->activityName}}</strong><br>
                    {{$invoice->trader->address_2}}<br>
                    {{$invoice->trader->address}}, Mailbox: {{$invoice->trader->mailBox}}<br>
                    Phone: {{$invoice->trader->user->phone}}<br>
                    Email: {{$invoice->trader->user->email}}
                  </address>
                </div>
                <!-- /.col -->
                <div class="col-sm-4 invoice-col">
                 
                  <br>
                  <b>Order ID: #</b> {{$invoice->id}}<br>
                  <b>Payment Due:</b> {{$invoice->created_at->format('m/d/Y')}}<br>
                  <b>Account:</b> {{$invoice->trader->tax_no}}
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->

              <!-- Table row -->
              <div class="row">
                <div class="col-12 table-responsive">
                  <table class="table table-striped">
                    <thead>
                    <tr>
                      <th>Qty</th>
                      <th>Product</th>
                      <th>Serial </th>
                      <th>Notes</th>
                      <th>Subtotal</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($invoice_items as $value)
                    <tr>
                      <td>{{$value->qty}}</td>
                      <td>{{$value->item_desc}}</td>
                      <td>#{{$value->id}}</td>
                      <td>{{$value->item_desc}}</td>
                      <td>{{$value->note}}</td>
                    </tr>
                    @endforeach
                    </tbody>
                  </table>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->

              <div class="row">
                <!-- accepted payments column -->
                <div class="col-6">
                  <p class="lead">Payment Methods:</p>
                  <img src="../../dist/img/credit/visa.png" alt="Visa">
                  <img src="../../dist/img/credit/mastercard.png" alt="Mastercard">
                  <img src="../../dist/img/credit/american-express.png" alt="American Express">
                  <img src="../../dist/img/credit/paypal2.png" alt="Paypal">

                  <p class="text-muted well well-sm shadow-none" style="margin-top: 10px;">
                    Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles, weebly ning heekya handango imeem
                    plugg
                    dopplr jibjab, movity jajah plickers sifteo edmodo ifttt zimbra.
                  </p>
                </div>
                <!-- /.col -->
                <div class="col-6">
                  <p class="lead">Amount Due {{$invoice->created_at->format('m/d/Y')}}</p>

                  <div class="table-responsive">
                    <table class="table">
                      <tr>
                        <th style="width:50%">Subtotal:</th>
                        <td>{{$invoice->sub_total}}  </td>
                      </tr>
                      <tr>
                        <th>Tax (15%)</th>
                        <td>{{$invoice->tax}}  </td>
                      </tr>
                      <tr>
                        <th>Delivery:</th>
                        <td>{{$invoice->delivery_fees}} </td>
                      </tr>
                      <tr>
                        <th>Total:</th>
                        <td>{{$invoice->total}} <span style='color:green'> SAR</span></td>
                      </tr>
                    </table>
                  </div>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->

              <!-- this row will not appear when printing -->
              <div class="row no-print">
                <div class="col-12">
                  <a onclick="window.print();" id="print" rel="noopener" target="_blank" class="btn btn-default"><i class="fas fa-print"></i> Print</a>
                  <button type="button" class="btn btn-success float-right"><i class="far fa-credit-card"></i> Submit
                    Payment
                  </button>
                  <button type="button" class="btn btn-primary float-right" style="margin-right: 5px;">
                    <i class="fas fa-download"></i> Generate PDF
                  </button>
                </div>
              </div>
            </div>
            <!-- /.invoice -->
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
    @endsection