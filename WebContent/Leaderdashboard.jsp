<!DOCTYPE html>
<html lang="en">
<%@include file="include/dbconnect.jsp"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Leader Landing Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="css/employee.css">
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
                            <a href="Leaderdashboard.jsp?q=<%=1%>">DashBoard</a>
                            <a href="#">Department</a>
                            <a href="#">Apply For Leave </a>
                            <a href="#">Employees</a>
                            <a href="#">Leave Status</a>
                            <a href="logoutprocess.jsp">Sign Out</a>
                    </div>
            </div>
            <div class="col-md-10">
                <div class="dashboard">
                    <h1>Welcome Mr. <%=session.getAttribute("curruser") %></h1>
                    <%
                    String que=request.getParameter("q").toString();
                    if(que.equals("1"))
                    {
                    	out.write("<div class='card'> <div class='card-body pull-right' style=''padding: 0'><div class='card-header'><h2 class='text-center'>Leave Requests</h2></div><table style='font-size:15px'class='table table-striped'>");
                    	out.write("<thead><tr><th scope='col'>Leave Id</th><th scope='col'>Employee id</th><th scope='col'>Employee Name</th><th scope='col'>FROM</th><th scope='col'>TO</th><th scope='col'>Reason</th><th scope='col'>APPROVE?</th></thead><tbody>");
                    }
                    int myid=(int)session.getAttribute("userid");
                    String sql="SELECT e.firstname AS 'ename',e.id AS 'eid',l.lid AS 'lid',sdate,edate,reason,l.`action`  FROM employee e INNER JOIN leaves l  WHERE e.id=l.empid AND l.leader='"+myid+"' and l.`action`='Pending'";
                    stmt=con.createStatement();
                    rs=stmt.executeQuery(sql);
                    while(rs.next()){
                    %>
                                    <tr>
					      			<th scope="row"><%=rs.getInt("lid") %></th>
					      			<td><%=rs.getString("eid") %></td>
					      			<td><%=rs.getString("ename") %></td>
					      			<td><%=rs.getDate("sdate") %></td>
					     			<td><%=rs.getDate("edate") %></td>
					     			<td><%=rs.getString("reason") %></td>
					     			<td><a href="leaderapproveleave.jsp?id=<%=rs.getInt("lid")%>">Approve</a>
					     			<a href="leaderrejectleave.jsp?id=<%=rs.getInt("lid")%>">Reject</a></td>
					     			</tr>              
                     <%}
                    out.write("</tbody></table>");
                       %>
                       </div>
                   </div>
            </div>
        </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>