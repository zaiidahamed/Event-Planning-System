<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Show Hall Details</title>

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
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<link rel="stylesheet" href="css/morris.css" type="text/css"/>

</head>
<body>

	<!--header start-->
	<header class="header fixed-top clearfix">
	<!--logo start-->
	<div class="brand">
	    <h2 style="color:white;">
	        Hall Details
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
	            				
	            <ul class="dropdown-menu extended logout">
                	<li><a href="#">Profile</a></li>
                	<li><a href="#">Settings</a></li>
                	<li><a href="loginA.jsp">Log Out</a></li>
            	</ul>        
	        </li>       
	    </ul>
	
	</div>
	</header>
	<!--header end-->
	
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
		
		<!--  -->
		
		<h4> <a href="createHall.jsp"> <button>Create a New Hall</button> </a> </h4>
		<br><br>
			<!-- create for each loop -->
			
			<table style="height: 275px;">
			<c:forEach var="h" items="${hallNames}">
		
			<c:set var="Id" value="${h.hallID}"/>
			<c:set var="Name" value="${h.name}"/>
			<c:set var="Des" value="${h.description}"/>
			<c:set var="Price" value="${h.price}"/>
				
			<tr>
				<td style="width: 100px;"> Hall Name: </td>
				<td> ${h.name} </td>
			</tr>
			
			<tr>
				<td> Hall ID: </td>
				<td> ${h.hallID} </td>
			</tr>
			
			<tr>
				<td> Description: </td>
				<td> 
					<p> ${h.description}</p>
				</td>
			</tr>
			
			<tr>
				<td > Price: </td>
				<td > ${h.price} </td>
			</tr>
			
			<tr><td> <br> </td></tr>
			
			<tr>
				<td></td>	
				<td> 
				<c:url value="updateHall.jsp" var="hallUpdate">
					<c:param name="id" value="${Id}"/>
					<c:param name="name" value="${Name}"/>
					<c:param name="des" value="${Des}"/>
					<c:param name="price" value="${Price}"/>			
				</c:url>
				
				<c:url value="deleteHall.jsp" var="delHall">
					<c:param name="id" value="${Id}"/>
					<c:param name="name" value="${Name}"/>
					<c:param name="des" value="${Des}"/>
					<c:param name="price" value="${Price}"/>			
				</c:url>
						
					<a href="${hallUpdate}"> <input type="button" value="Update Hall"> </a>
					<a href="${delHall}"> <input type="button" value="Delete Hall"> </a>
				</td>
			</tr>
			
			<tr><td> <br> </td></tr>
		
			
			</c:forEach>
			</table>	
			
		 	<br><br>
			<c:forEach var="adm" items="${AdminDetails}">		
				<c:set var="Username" value="${adm.username}"/>											         	               	
    		</c:forEach>
    		
    		<form action="adminInfo" method="post">
    			 <input type="hidden" name="username" value="${Username}">
    			 <input type="submit" name="submit" value="Go Back">
			</form>
			
		</section>
	</section>
	<!--main content end-->

</body>
</html>