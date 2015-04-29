<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang = "fr">
<head>
<title>EasyGeek</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery1.min.js"></script>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<!--start slider -->
    <link rel="stylesheet" href="css/fwslider.css" media="all">
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/css3-mediaqueries.js"></script>
    <script src="js/fwslider.js"></script>
<!--end slider -->
<script src="js/jquery.easydropdown.js"></script>
</head>
<body>
    <div class="header-top">
	   	<div class="wrap"> 
			<div class="cssmenu">
				<ul>
					<li><a href="connexion">Connexion</a></li> |
					<li><a href="register">Inscription</a></li>
				</ul>
			</div>
			<div class="clear"></div>
 		</div>
	</div>
	<div class="header-bottom">
	    <div class="wrap">
			<div class="header-bottom-left">
				<div class="logo">
					<a href="index"><img src="images/logo.png" alt=""/></a>
				</div>
				<div class="menu">
	            	<ul class="megamenu skyblue">
						<li class="active grid"><a href="index">Accueil</a></li>
						<li><a class="color4" href="categorie">Composants PC</a>
							<div class="megapanel">
								<div class="row">
									<div class="col1">
										<div class="h_nav">
											<h4>Contact Lenses</h4>
											<ul>
												<li><a href="womens.html">Daily-wear soft lenses</a></li>
												<li><a href="womens.html">Extended-wear</a></li>
												<li><a href="womens.html">Lorem ipsum </a></li>
												<li><a href="womens.html">Planned replacement</a></li>
											</ul>	
										</div>							
									</div>
									<div class="col1">
										<div class="h_nav">
											<h4>Sun Glasses</h4>
											<ul>
												<li><a href="womens.html">Heart-Shaped</a></li>
												<li><a href="womens.html">Square-Shaped</a></li>
												<li><a href="womens.html">Round-Shaped</a></li>
												<li><a href="womens.html">Oval-Shaped</a></li>
											</ul>	
										</div>							
									</div>
									<div class="col1">
										<div class="h_nav">
											<h4>Eye Glasses</h4>
											<ul>
												<li><a href="womens.html">Anti Reflective</a></li>
												<li><a href="womens.html">Aspheric</a></li>
												<li><a href="womens.html">Bifocal</a></li>
												<li><a href="womens.html">Hi-index</a></li>
												<li><a href="womens.html">Progressive</a></li>
											</ul>	
										</div>												
									</div>
								</div>
							</div>
						</li>		
						<c:forEach var="type" items="${typeList}">
						<li><a class="color6" href="categorie"><c:out value="${type.libelle}" /></a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
	   		<div class="header-bottom-right">
         		<div class="search">	  
					<input type="text" name="s" class="textbox" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
					<input type="submit" value="Subscribe" id="submit" name="submit">
					<div id="response"> </div>
		 		</div>
    		</div>
     		<div class="clear"></div>
     	</div>
	</div>
