<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Employee Landing Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="employee.css">
</head>
<body>
    <header id="headernav">
        <nav class="navbar navbar-light bg-dark">
                <a class="navbar-brand" style="color:whitesmoke;font-weight: bold;letter-spacing:1px;" href="#">PERMISSION MANAGEMENT SYSTEM</a>
        </nav>
    </header>
        <div class="row" style="height: 100%;position: absolute;">
            <div class="col-md-2 col-sm-2 col-lg-2 " id="leftnav">
                    <div style=" padding-top: 15%;"id="mysidenav" class="sidenav sidenavbar">
                        <div>
                        </div>
                            <a href="#">DashBoard</a>
                            <a href="#">Department</a>
                            <a href="#">Apply For Leave </a>
                            <a href="#">Employees</a>
                            <a href="#">Leave Status</a>
                            <a href="logoutprocess.jsp">Sign Out</a>
                    </div>
            </div>
            <div class="col-md-10">
                <div class="dashboard">
                <h1>Welcome <%     
						String name=request.getParameter("uname");  
						out.print(name);  
						session.setAttribute("user",name);  

							%></h1>
                    <div class="row upperbox" style="">
                        <div class="col-md-4 outerbox">
                            <div class="empdashbox">
                            <center><p>No of leaves</p></center>
                            </div>
                        </div>
                        <div class="col-md-4 outerbox">
                            <div class="empdashbox">
                            <center><p>No of leaves</p></center>

                            </div>
                        </div>
                        <div class="col-md-4 outerbox">
                            <div class="empdashbox">
<center><p>No of leaves</p></center>
                            </div>
                        </div>
                    </div>
                    
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#leaverequest">Request for New Leave</button>
                    <div class="card pull-right" style="position:absolute;width:30%;right: 5vw;">
                            <div class="card-body pull-right" style="padding: 0">
                                    <div class="card-header">
                                            <h1 class="text-center">General Holidays</h1>
                                          </div>
                              <ol class="list-group list-group-flush">
                                  <li class="list-group-item text-center">Dusshera (8th October 2019)</li>
                                  <li class="list-group-item text-center">New Year (1st January 2020)</li>
                                  <li class="list-group-item text-center">Sankranti (15th January 2020)</li>
                              </ol>
                            </div>
                          </div>
                    <div class="modal" id="leaverequest">
    <div class="modal-dialog">
      <div class="modal-content">
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Apply For Leave</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <!-- Modal body -->
        <div class="modal-body">
                <form class="form-horizontal" action="/applyforleave.jsp">
                    <div class="input-group mb-3">
                            <div class="input-group-prepend">
                              <span class="input-group-text" id="basic-addon1">Leave Title</span>
                            </div>
                            <input type="text" class="form-control-lg" placeholder="Mention why do you need leave?" aria-label="Username" aria-describedby="basic-addon1">
                          </div>
                          <div class="input-group mb-3">
                                <div class="input-group-From">
                                  <span class="input-group-text" id="basic-addon1">Leave From</span>
                                </div>
                                <input type="date" name="fromdate" class="form-control" placeholder="Mention why do you need leave?" aria-label="Username" aria-describedby="basic-addon1">
                            </div>
                            <div class="input-group mb-3">
                                    <div class="input-group-From">
                                      <span class="input-group-text" id="basic-addon1">Leave To</span>
                                    </div>
                                    <input type="date" name="todate" class="form-control" placeholder="Mention why do you need leave?" aria-label="Username" aria-describedby="basic-addon1">
                                </div>
                                <div class="input-group">
                                        <div class="input-group-prepend">
                                          <span class="input-group-text">Mention Your Reason for Leave Here</span>
                                        </div>
                                        <textarea cols="40" rows="40" class="form-control-lg" aria-label="With textarea"></textarea>
                                      </div>
                  </form>
        </div>
        <!-- Modal footer -->
        <div class="modal-footer">
         <button type="button" class="btn btn-success pull-right" >SUBMIT</button>
          <button type="button" class="btn btn-danger pull-left" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
                </div>
            </div>
        </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>