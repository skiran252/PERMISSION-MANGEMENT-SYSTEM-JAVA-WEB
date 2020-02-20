<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="include/dbconnect.jsp"%>

<%
String id=request.getParameter("id");
String action="Accepted";
int i=0;
stmt=con.createStatement();
String sql="update leaves set action='"+action+"'where lid='"+id+"'";
i=stmt.executeUpdate(sql);
response.sendRedirect("Leaderdashboard.jsp?q=1");
%>