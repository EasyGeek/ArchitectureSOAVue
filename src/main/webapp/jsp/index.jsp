<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
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
					<li><a href="?page=connexion">Connexion</a></li> |
					<li><a href="?page=register">Inscription</a></li>
				</ul>
			</div>
			<div class="clear"></div>
 		</div>
	</div>
	<div class="header-bottom">
	    <div class="wrap">
			<div class="header-bottom-left">
				<div class="logo">
					<a href="?page=accueil"><img src="images/logo.png" alt=""/></a>
				</div>
				<div class="menu">
	            	<ul class="megamenu skyblue">
						<li class="active grid"><a href="?page=accueil">Accueil</a></li>
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
						<li><a class="color6" href="?page=categorie">Ordinateurs</a></li>
						<li><a class="color7" href="?page=categorie">PC Portables</a></li>
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

	<div class="main">


		<%
			String req=request.getParameter("page");
		if(req==null || req.equals("accueil"))	
		{%>
			<jsp:include page="function/accueil.jsp"/>
		<%}
		else if (req.equals("connexion")) {%>
				<jsp:include page="function/connexion.jsp"/>
		    <%}
	    else if (req.equals("register")) {%>
			<jsp:include page="function/inscription.jsp"/>
	    <%}
	    else if (req.equals("article")) {%>
				<jsp:include page="function/article.jsp"/>
	    <%}
	    else if (req.equals("categorie")) {%>
			<jsp:include page="function/categorie.jsp"/>
	    <%}
	    else if (req.equals("nous")) {%>
			<jsp:include page="function/nous.jsp"/>
	    <%}
	    else if (req.equals("contact")) {%>
			<jsp:include page="function/contact.jsp"/>
	    <%}
	    else if (req.equals("condition")) {%>
			<jsp:include page="function/conditions.jsp"/>
	    <%}
	    else if (req.equals("article")) {%>
			<jsp:include page="function/article.jsp"/>
	    <%}%>
	    

	   	
	
	</div>

   <div class="footer">
		<div class="footer-top">
			<div class="wrap">
			  <div class="section group example">
				<div class="col_1_of_2 span_1_of_2">
					<ul class="f-list">
					  <li><img src="images/2.png"><span class="f-text">Livraison gratuite au delà de 100€</span><div class="clear"></div></li>
					</ul>
				</div>
				<div class="col_1_of_2 span_1_of_2">
					<ul class="f-list">
					  <li><img src="images/3.png"><span class="f-text">Contactez nous au 01-02-03-04-05 !</span><div class="clear"></div></li>
					</ul>
				</div>
				<div class="clear"></div>
		      </div>
			</div>
		</div>
		
		<div class="footer-bottom">
			<div class="wrap">
	             <div class="copy">
			        <p>© 2014 Template by <a href="http://w3layouts.com" target="_blank">w3layouts</a></p>
		         </div>
				<div class="f-list2">
				 <ul>
					<li class="active"><a href="?page=nous">A propos</a></li> |
					<li><a href="?page=condition">Conditions d'utilisation</a></li> |
					<li><a href="?page=contact">Contactez nous</a></li> 
				 </ul>
			    </div>
			    <div class="clear"></div>
		      </div>
	     </div>
	</div>
</body>
</html>