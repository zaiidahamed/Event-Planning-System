<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Create a New Hall</title>

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
	        Create New Hall
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
	                <span class="username">Admin01</span>
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
	
	<form action="insertHall" method="post">
		<table style="height: 275px;">
			<tr>
				<td> Hall ID:</td>
				<td> <input type="text" name="hallID" placeholder="Enter Hall ID" required > </td>
			</tr>
			
			<tr>
				<td> Hall Name:</td>
				<td> <input type="text" name="name" placeholder="Enter Hall Name" required > </td>
			</tr>
			
			<tr>
				<td style="width: 100px; vertical-align:top;"> Description:</td>
				<td style=" vertical-align:top; "> 
					<textarea rows="6" cols="50" placeholder="Enter Description" required name="des" ></textarea> 
				</td>
			</tr>
			
			<tr>
				<td style="vertical-align:top"> Price:</td>
				<td style="vertical-align:top"> 
					<input type="text" name="price" placeholder="Enter Price" required > 
				</td>
			</tr>		
		</table>
		<br>

		<input type="submit" name="submit" value="Create Hall">	
	</form>
	<br>
	<form class="active" action="halls" method="post">            
          <input type="submit" name="submit" value="Go Back">
    </form>	
    
	</section>
</section>
<!--main content end-->
</body>
</html>