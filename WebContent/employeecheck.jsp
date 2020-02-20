<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import ="java.sql.*" %>
   <%@ page import ="javax.sql.*" %>
   <%
   String userid=request.getParameter("uname");
   session.setAttribute("userid",userid);
   String pwd=request.getParameter("password");
   Class.forName("com.mysql.jdbc.Driver");
   java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms","root","root");
   Statement st= con.createStatement();
   ResultSet rs=st.executeQuery("select * from users where user_id='"+userid+"'");
   if(rs.next())
   {
   if(rs.getString(2).equals(pwd))
   {
   out.println("welcome"+userid);

   }
   else
   {
   out.println("Invalid password try again");
   }
   }
   else
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Checking Page</title>
</head>
<body>

</body>
</html>