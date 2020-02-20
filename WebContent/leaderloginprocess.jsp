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
    ResultSet rs = null;
    String driverName = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/pas";
    String user = "root";
    String dbpsw = "root";
    String sql = "select * from leader where username=? and password=?";
    String name = request.getParameter("uname");
    String password = request.getParameter("psw");
    String username;
    if ((!(name.equals(null) || name.equals("")) && !(password.equals(null) || password.equals("")))) {
        try {
            Class.forName(driverName);
            con = DriverManager.getConnection(url, user, dbpsw);
            ps = con.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, password);
            rs = ps.executeQuery();
            if (rs.next()) {
            	int eid=rs.getInt("id");
                userdbName = rs.getString("username");
                userdbPsw = rs.getString("password");
                username = rs.getString("firstname");
                eid=rs.getInt("id");
                System.out.println(username);
                
                if (name.equals(userdbName) && password.equals(userdbPsw)) {
                    session.setAttribute("curruser", username);
                    session.setAttribute("userid", eid);
                    
                    response.sendRedirect("Leaderdashboard.jsp?q=1");
                }
            }
            else {
                response.sendRedirect("index.jsp");
                session.setAttribute("error", "User doesnt exist");
            }
            rs.close();
            ps.close();
        } 
        catch (SQLException sqe) {
            out.println(sqe);
        }
    } else {
%>

<p align="right"style="color:red">Error In Login</p>

<%
        getServletContext().getRequestDispatcher("/index.jsp").include(request,response);
    }
%>
</body>
</html>