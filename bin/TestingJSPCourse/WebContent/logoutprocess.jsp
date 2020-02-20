<html>
<body bgcolor="khaki">
		<script>
        alert("You are Sucessfully logged out...");
        </script>
        <%
            session.invalidate();
        %>
        
		<%
        String redirectURL = "index.jsp";
        response.sendRedirect(redirectURL);
  		 %>

    </body>

</html>