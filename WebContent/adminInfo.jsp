<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>adminInfo</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/style-responsive.css" rel="stylesheet"/>

</head>
<body>
	<!--header start-->
	<header class="header fixed-top clearfix">
	<!--logo start-->
	<div class="brand">
	    <h2 style="color:white;">
	        Admin Details
	    </h2>
	</div>
	<!--logo end-->
	
	       
	<div class="top-nav clearfix">
	    <!--search & user info start-->
	    <ul class="nav pull-right top-menu">
	        <li>
	            <input type="text" class="form-control search" placeholder=" Search">
	        </li>
	        <!-- user login dropdown start-->
	        <li class="dropdown">
	            <a data-toggle="dropdown" class="dropdown-toggle" href="A_index.jsp">
	                <img alt="" src="images/2.png">
	                <span class="username">Admin</span>
	                <b class="caret"></b>
	            </a>         
	        </li>       
	    </ul>
	
	</div>
	</header>
	<!--header end-->
	
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
	<br>

	<%
		String Id = request.getParameter("Id");
		String Name = request.getParameter("Name");
		String Address = request.getParameter("Address");
		String Phone = request.getParameter("Phone");
		String Username = request.getParameter("Username");
		String Password = request.getParameter("Password");
	%>
	
	<form action="adminInfo" method="post">
		<table style="height: 225px;">
			<tr>
				<td style="width: 100px;"> ID:</td>
				<td> <input type="hidden" name="id"> <%= Id %> </td>
			</tr>
			
			<tr>
				<td> Name:</td>
				<td> <input type="hidden" name="name"> <%= Name %> </td>
			</tr>
			
			<tr>
				<td> Address:</td>
				<td> <input type="hidden" name="address"> <%= Address %> </td>
			</tr>
			
			<tr>
				<td> Phone:</td>
				<td> <input type="hidden" name="phone"> <%= Phone %> </td>
			</tr>
			
			<tr>
				<td> Username:</td>
				<td> <input type="hidden" name="username"> <%= Username %> </td>
			</tr>
			
			<tr>
				<td> Password:</td>
				<td> <input type="hidden" name="password"> <%= Password %> </td>
			</tr>
			<tr> <td> </td> </tr>
			<tr>
				<td> <input type="submit" name="submit" value="Go Back"> </td>
			</tr>
			
		</table>
	</form>
	<br>

	</section>
</section>
</body>
</html>