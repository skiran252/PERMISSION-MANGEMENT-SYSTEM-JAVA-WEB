<div class="backgroundimg" >
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-6 col-sm-12 col-xs-12">
        <center><h1>LOGIN BELOW</h1></center>
          <form  action="employee.jsp" method="post" name="loginform" onSubmit="return formValidation();" style="line-height: 50%">
            <div class='formcontainer'>
              <label for="uname"><b>USERNAME</b></label>
              <input type="text" placeholder="Enter Your Username here" name="uname" required>
            <br>
              <label for="psw"><b>Password</b></label>
              <input type="password"  placeholder="Enter Your Password here" name="psw" required>
            <br>
            <label for="psw" ><b>Role</b></label>
            <select class="" style="clear: both;height: 40px;width: 100%;" >
              <option value="employee" name="role">employee</option>
              <option value="leader" name="role">leader</option>
              <option value="manager" name="role">manager</option>
            </select>
            <div>
                <label>
                  <input type="checkbox" checked="checked" name="remember"> Remember me
                </label>
            </div>
            </div>
            <div style="width: 100%">
              <button  style="float:left"type="submit" class="button">LOGIN</button>
              <button style="float:right"type="button" class="cancelbtn">CANCEL</button>
            </div>
            <br>
              <h5>Forgot <a href="#">password?</a>
              </h5>
            <p name="displayloginstatus"> </p>
            <h4>Not Registered  yet? Registered <a href="register.jsp">Here</a></h4>
          </form>
        </div>
      </div>
    </div>
  </div>

