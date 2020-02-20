<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ page buffer="none" %>
<jsp:include page="include/header.jsp" flush="true"/>
<div id="back">
  <div class="backRight"></div>
  <div class="backLeft"></div>
</div>

<div id="slideBox">
  <div class="topLayer">
    <div class="left">
    <h1 align="left">Welcome Employee</h1>
      <div class="content">
        <h2>Sign Up</h2>
        <form method="post" onsubmit="return loginval;">
          <div class="form-group">
            <input type="text" placeholder="username" name="uname"/>
          </div>
          <div class="form-group">
            <input type="password" placeholder="username" name="psw"/>
          </div>
          <div class="form-group">HI</div>
          <div class="form-group"></div>
          <div class="form-group"></div>
        </form>
        <button id="goLeft" class="off">Login</button>
        <button>Sign up</button>
      </div>
    </div>
    <div class="right">
    <h2 align="Center" style="color:#03A9F4">Hey,Lead Login Here</h2>
      <div class="content">
        <h2> Login</h2>
        <form method="post" name="loginform" onsubmit="return formValidation();" action="leaderloginprocess.jsp">
          <div class="form-group">
            <label for="username" class="form-label">Username</label>
            <input type="text" name="uname"/>
          </div>
          <div class="form-group">
            <label for="username" class="form-label">Password</label>
            <input type="password" name="psw"/>
          </div>
          
          <button id="login" type="submit">Login</button>
        </form>
        
      </div>
    </div>
  </div>
</div>

<!--Inspiration from: http://ertekinn.com/loginsignup/-->
<jsp:include page="include/footer.jsp" flush="true"/>