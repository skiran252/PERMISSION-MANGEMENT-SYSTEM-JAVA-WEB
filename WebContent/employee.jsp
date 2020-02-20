<!DOCTYPE html> 
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@include file="include/dbconnect.jsp"%>
<html lang="en">
<head>
	
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Employee Landing Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="css/employee.css">
    <script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
    <script>
    $(document).ready(function(){
        $("#leavebutton").click(function(){
           $("#dashboard").load("leavereuest.html"); 
        });
    });
	</script>
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
                        	
                            <a href="employee.jsp?q=<%=1%>">DashBoard</a>
                            <a href="#"data-toggle="modal" data-target="#leaverequest">Apply For Leave </a>
                            <a href="employee.jsp?q=<%=2%>">Leave Status</a>
                            <a href="logoutprocess.jsp">Sign Out</a>
                    </div>
            </div>
            <div class="col-md-10">
                <div class="dashboard" id="dashboard">
                <h1 style="float:right"> 
                <%  
					String name=(String)session.getAttribute("curruser");  
        		    int  eid=(int)session.getAttribute("empid");
               		out.print(name);
               		%>
                </h1>
                <%
                String que=request.getParameter("q").toString();
                if(que.equals("1"))
                {
                	out.print("<h1>Dashboard</h1>");
                	out.write("<div class='row upperbox' style='font-size:20px;'><div class='col-md-4 outerbox'><div class='empdashbox'><center><p>No of leaves</p></center></div></div><div class='col-md-4 outerbox'><div class='empdashbox'><center><p>No of leaves</p></center></div></div><div class='col-md-4 outerbox'><div class='empdashbox'><center><p>No of leaves</p></center></div></div></div>");
                
                }
                else if(que.equals("2"))
                {
                	out.print("<h1>Leaves</h1>");
                    stmt=con.createStatement();
                	String sql="select * from leaves where empid='"+eid+"'";
                	rs = stmt.executeQuery(sql);
                	out.write("<table class='table table-striped'><thead class='thead-dark'><tr><th scope='col'>Letter ID</th><th scope='col'>From</th><th scope='col'>To</th><th scope='col'>Reason</th><th scope='col'>Leave Status</th><th scope='col'>Generate Letter</th></tr></thead>");
                	 while(rs.next())
                	 {
                		 %>
                		  <tr>
					      <th scope="row"><%=rs.getInt("lid") %></th>
					      <td><%=rs.getString("sdate") %></td>
					      <td><%=rs.getString("edate") %></td>
					      <td><%=rs.getString("reason") %></td>
					      <td><%=rs.getString("action") %></td>
					      <td><a href="letter.jsp?lid=<%=rs.getInt("lid")%>">Generate</a></td>
          				  </tr>		
                		 
                		 <%}
                	out.write("</table>");}
                
                %>
                    <div>
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
                <form class="form-horizontal" method="post" action="applyforleave.jsp">
                    <div class="input-group mb-3">
                    
                          <div class="input-group mb-3">
                                <div class="input-group-From">
                                  <span class="input-group-text" id="basic-addon1">Leave From</span>
                                </div>
                                <input type="date" name="fromdate" name="fromdate" class="form-control" placeholder="Mention why do you need leave?" aria-label="Username" aria-describedby="basic-addon1">
                            </div>
                            <div class="input-group mb-3">
                                    <div class="input-group-From">
                                      <span class="input-group-text" id="basic-addon1">Leave To</span>
                                    </div>
                                    <input type="date" name="todate" name="todate" class="form-control" placeholder="Mention why do you need leave?" aria-label="Username" aria-describedby="basic-addon1">
                                </div>
                                <div class="input-group">
                                        <div class="input-group-prepend">
                                          <span class="input-group-text">Mention Your Reason for Leave Here</span>
                                        </div>
                                        <textarea name="reason" cols="40" rows="40" class="form-control-lg" aria-label="With textarea"></textarea>
                                      </div>
                                      <button type="submit" class="btn btn-success pull-right" >SUBMIT</button>
                  </form>
        </div>
        <!-- Modal footer -->
        <div class="modal-footer">
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