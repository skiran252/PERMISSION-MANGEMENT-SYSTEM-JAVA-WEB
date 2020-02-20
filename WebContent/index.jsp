<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ page buffer="none" %>
<jsp:include page="include/header.jsp" flush="true"/>
<div id="back">
  <div class="backRight"></div>
  <div class="backLeft"></div>
</div>
<style>
.left .form-group input
{
color:white;
letter-spacing:3px;
height:15px;
width:50%;
}
</style>

<div id="slideBox">
  <div class="topLayer">
    <div class="left">
      <div class="" style="padding-left:100px;color:white;">
        <h2>Sign Up</h2>
        <form method="post" onsubmit=";">
          <div class="form-group">
            <input type="text" placeholder="First Name" name="fname"/>
          </div>
          <div class="form-group">
            <input type="text" placeholder="Last Name" name="lname"/>
          </div>
          <div class="form-group">
            <input type="text" placeholder="username" name="uname"/>
          </div>
          <div class="form-group">
            <input type="password" placeholder="password" name="password"/>
          </div>
          <div class="form-group">
            <input type="text" placeholder="address" name="address"/>
          </div>
          <div class="form-group">
            <input type="text" placeholder="PHONE NO" name="phoneno"/>
          </div>
          <div class="form-group">
            <input type="text" placeholder="e-mail" name="email"/>
          </div>
          <div>Date Of Birth</div>
          <div class="form-group" style="">
            <input type="date" name="dob" style="background-color:white;color:black;height:15px;"/>
          </div>
        </form>
        <button id="goLeft" class="off">Login</button>
        <button>Sign up</button>
      </div>
      Hi
    </div>
    <div class="right">
    <h2 align="Center" style="color:#03A9F4">Employee Login</h2>
      <div class="content">
        <h2> Login</h2>
        <form method="post" name="loginform" onsubmit="return formValidation();" action="loginprocess.jsp">
          <div class="form-group">
            <label for="username" class="form-label">Username</label>
            <input type="text" name="uname"/>
          </div>
          <div class="form-group">
            <label for="username" class="form-label">Password</label>
            <input type="password" name="psw"/>
          </div>
          
          <button id="login" type="submit">Login</button>
          <button id="goRight" class="off" type="button">Sign Up</button>
        </form>
        
      </div>
    </div>
  </div>
</div>

<!--Inspiration from: http://ertekinn.com/loginsignup/-->
<jsp:include page="include/footer.jsp" flush="true"/>