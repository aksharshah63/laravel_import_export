<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<body>
  <div class="container">
    <div class="row">
      <div class="col-lg-12" style="margin-top: 20px;text-align: center;margin-bottom: 20px;">
          <a href="{{url('/export-excel')}}"><button class="btn btn-primary">Export to Excel</button></a>
          <a href="{{url('/export-csv')}}"><button class="btn btn-primary">Export to CSV</button></a>
          <a href="{{url('/download-pdf')}}"><button class="btn btn-primary">Download PDF</button></a>
          <a href="{{url('/import-form')}}"><button class="btn btn-primary">Import from Excel</button></a>
      </div>
    </div>
  </div>
<form method="post" action="{{route('add')}}">
  @csrf
  @if ($message = Session::get('success'))
  <div class="alert alert-success alert-block">
      <button type="button" class="close" data-dismiss="alert">×</button>    
      <strong>{{ $message }}</strong>
  </div>
  @endif
    <h1 class="text-center"> Add Employee</h1>
    <div class="row">
      <div class="col-lg-3"></div>
      <div class="col-lg-6">
        <div class="form-group">
          <label for="exampleInputEmail1">Name</label>
          <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Name" name="name" required>
        </div>
      </div>
      <div class="col-lg-3"></div>
    </div>
    <div class="row">
      <div class="col-lg-3"></div>
      <div class="col-lg-6">
        <div class="form-group">
          <label for="exampleInputPassword1">Email</label>
          <input type="email" class="form-control" id="exampleInputPassword1" placeholder="Email" name="email" required>
        </div>
      </div>
      <div class="col-lg-3"></div>
    </div>
    <div class="row">
      <div class="col-lg-3"></div>
      <div class="col-lg-6">
        <div class="form-group">
          <label for="exampleInputPassword1">Phone</label>
          <input type="number" class="form-control" id="exampleInputPassword1" placeholder="Phone" name="phone" required>
        </div>
      </div>
      <div class="col-lg-3"></div>
    </div>
    <div class="row">
      <div class="col-lg-3"></div>
      <div class="col-lg-6">
        <div class="form-group">
          <label for="exampleInputPassword1">Salary</label>
          <input type="number" class="form-control" id="exampleInputPassword1" placeholder="Salary" name="salary" required>
        </div>
      </div>
      <div class="col-lg-3"></div>
    </div>
    <div class="row">
      <div class="col-lg-3"></div>
      <div class="col-lg-6">
        <div class="form-group">
          <label for="exampleInputPassword1">Department</label>
          <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Department" name="department" required>
        </div>
      </div>
      <div class="col-lg-3"></div>
    </div>
    <div class="row">
      <div class="col-lg-3"></div>
      <div class="col-lg-6">
        <button type="submit" class="btn btn-primary">Submit</button>
      </div>
      <div class="col-lg-3"></div>
    </div>
  </form>
</body>
</html>