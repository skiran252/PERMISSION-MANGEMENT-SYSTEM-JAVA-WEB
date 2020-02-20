<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Permission Approval System</title>
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" href="css/login.css">
    <script src="loginvalidation.js"></script>
    <head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<script>
$(document).ready(function(){
	  $('#goRight').on('click', function(){
	    $('#slideBox').animate({
	      'marginLeft' : '0'
	    });
	    $('.topLayer').animate({
	      'marginLeft' : '100%'
	    });
	  });
	  $('#goLeft').on('click', function(){
	    $('#slideBox').animate({
	      'marginLeft' : '50%'
	    });
	    $('.topLayer').animate({
	      'marginLeft': '0'
	    });
	  });
	});
</script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
</head>

<body onload="document.loginform.uname.focus();">
        <nav class="navbar navbar-default bg-dark" style="margin-bottom: 0">
                <div class="container-fluid">
                  <div class="navbar-header">
                    <a class="navbar-brand" href="index.jsp">Permission Approval System</a>
                  </div>
                  <ul class="nav navbar-nav pull-right">
                    <li class="active"><a href="index.jsp">Home</a></li>
                    <li><a href="#">Contact Us</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="managerlogin.jsp">Manager</a></li>
                    <li><a href="leaderlogin.jsp">Leader</a></li>
                  </ul>
                </div>
              </nav>