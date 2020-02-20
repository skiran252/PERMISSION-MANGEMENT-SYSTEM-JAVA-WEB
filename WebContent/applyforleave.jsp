<jsp:include page="include/dbconnect.jsp" flush="true"/>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.*" %>
<%
    String fromdate=request.getParameter("fromdate").toString();
    String todate=request.getParameter("todate").toString();
    String reason=(String)request.getParameter("reason");
    try {
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pas","root","root");
    		String sql="insert into leaves(sdate,edate,reason,empid,leader,action) values(?,?,?,?,?,?)";
    		
    		PreparedStatement ps = con.prepareStatement(sql);
            Date frmdate=Date.valueOf(fromdate);
            Date tdate=Date.valueOf(todate);
            ps.setDate(1,frmdate);
            ps.setDate(2,tdate);
            ps.setString(3,reason);
            ps.setInt(4,(int)session.getAttribute("empid"));
            ps.setInt(5,1);
            ps.setString(6,"Pending");
            int i = ps.executeUpdate();
            if(i>0)
            	System.out.println(i+"records inserted successfully");
            ps.close();
        } 
        catch (SQLException sqe) 
    	{
            out.println(sqe);
        }

response.sendRedirect("employee.jsp?q=1");
%>
