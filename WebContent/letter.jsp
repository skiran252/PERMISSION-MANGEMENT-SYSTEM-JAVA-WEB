<!DOCTYPE html>
<html lang="en">
<%@include file="include/dbconnect.jsp" %>
<%@page import="java.util.Date" %>
<%@page import="java.time.LocalDateTime" %>
<%@page import="java.time.format.DateTimeFormatter" %>
<%
int eid=(int)session.getAttribute("empid");
String sql1,sql2,sql3,sql4;
sql1="select * from employee where id='"+eid+"'";
sql2="select * from leaves ";
sql3="select * from manager";
sql4="select * from leader";
stmt=con.createStatement();
ResultSet rs1,rs2,rs3,rs4;
rs1=stmt.executeQuery(sql1);
rs1.next();


%>
<head>
	<meta charset="utf-8">
	<meta name="author" content="Don Wagner">
	<title>GeneratedLetter</title>
	<link rel="stylesheet" href="style.css">
	<style>
	body {
  max-width: 800px;
  margin: 0 auto;
}

.receiver-column {
  text-align: right;
}

h1 {
  font-size: 1.5em;
}

h2 {
  font-size: 1.3em;
}

p,ul,ol,dl,address {
  font-size: 1.1em;
}

p, li, dd, dt, address {
  line-height: 1.5;
}
	</style>
</head>

<body style="border:1px solid gray;padding:10px;margin-bottom:100px;margin-top:20px;position: relative;">
	<h1 align="center">LEAVE REQUEST</h1>
	<%
	String lid=request.getParameter("lid");
	String ename=rs1.getString("firstname")+" "+rs1.getString("lastname");
	String role=rs1.getString("role");
	String address=rs1.getString("address");
	String phoneno=rs1.getString("phoneno");
	String eemail=rs1.getString("email");
	int leader=rs1.getInt("leader");
	
	%>

	<p class="receiver-column">
		<strong><em><%=ename%></em></strong><br>
		<em><%=role%></em><br>
		<em><%=address%></em><br>
		<em>INDIA</em><br>
		<strong><em>Mobile</em></strong>: <em><%=phoneno%></em><br>
		<strong><em>Email</em></strong>: <em><%=eemail%></em><br><br>
		<b><% 
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd MMMM yyyy");
		LocalDateTime now = LocalDateTime.now();
		out.println(dtf.format(now));
		%>
		</b>
		</p>
		

	<p>
	<%
	rs1=stmt.executeQuery("select * from leader where id="+leader);
	rs1.next();
	System.out.println(rs1.getString("firstname"));
	
	String lename=rs1.getString("firstname")+" "+rs1.getString("lastname");
	String laddress=rs1.getString("address");
	String lemail=rs1.getString("email");
	
	%>
		<strong><em>Mr.  <%=lename %></em></strong><br>
		<em><%=laddress %><br>
		<%=lemail %><br>
		INDIA</em><br>
	</p>

	
	<h1>Re:Application for leave</h1>

	<p>Dear <%=rs1.getString("firstname") %>,</p>
	<% 
	rs1=stmt.executeQuery("select * from leaves where lid="+lid);
	rs1.next();
	String reason=rs1.getString("reason");
	Date sdate=rs1.getDate("sdate");
	Date edate=rs1.getDate("edate");
	String status=rs1.getString("action");
	%>
	<p>I am writing to you to let you know that I am <b><%=reason %></b> due to which I will not be able to come to the office from 
	<b><%=sdate %></b> to <b><%=edate %></b>.</p>


	<p>I have discussed and delegated my tasks to colleagues & have instructed them to call me for any help during my absence.</p>
	<p>I will be obliged if you consider my application for approval.</p>

	<b><p>Yours sincerely,</p></b>

	<%=ename %>
	<br>
	<br>
	Employee Id:  <b><%=session.getAttribute("empid") %></b>
	<br>
	<br>
	<b style="margin-left:25%">Letter Approval Status:  <span style="color:blue;"><%=status %></span></b><br>
	<b style="position:absolute;right:10px;bottom:10px;">Letter ID:<span style="color:Tomato;"><%=lid %></span></b>
	<button onclick="myFunction()">Print this Letter</button>
	<a href="employee.jsp?q=2">Go Back</a>

<%rs1.close(); %>
<script>
function myFunction() {
  window.print();
}
</script>

</body>
</html>