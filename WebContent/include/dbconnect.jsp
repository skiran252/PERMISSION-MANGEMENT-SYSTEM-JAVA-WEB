<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<%!
    String userdbName;
    String userdbPsw;
    String dbUsertype;
%>
<%
    Connection con = null;
    PreparedStatement ps = null;
    Statement stmt=null;
    ResultSet rs = null;
    String driverName = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/pas";
    String user = "root";
    String dbpsw = "root";
        try {
            Class.forName(driverName);
            con = DriverManager.getConnection(url, user, dbpsw);
        } 
        catch (SQLException sqe) {
            out.println(sqe);
        }
%>
</body>
</html>