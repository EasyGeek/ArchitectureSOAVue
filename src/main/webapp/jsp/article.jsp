<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp" />
<div class="main">
	<div class="mens">
		<div class="main">
			<div class="wrap">
				<ul class="breadcrumb breadcrumb__t">
					<a class="home" href="#">Home</a> /
					<a href="#">Dolor sit amet</a> / Lorem ipsum dolor sit amet
				</ul>
				<div class="cont span_2_of_3">
					<div class="grid images_3_of_2">
						<div id="container">
							<div id="products_example">
								<div id="products">
									<div class="slides_container">
										<img class="a" id="img1" src="http://localhost:8080/ArchitectureSOAVue/images/${composant.image}" alt="${composant.nom}" />
									</div>
									<ul class="pagination">
										<li><img class="a" id="img1" src="http://localhost:8080/ArchitectureSOAVue/images/${composant.image}" alt="${composant.nom}" /></li>
										<div class="clear"></div>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="desc1 span_3_of_2">
						<h3 class="m_3">
							<c:out value="${composant.nom}" />
						</h3>
						<p class="m_5">
							<c:out value="${composant.prixHt}" />&euro;
							<span class="reducedfrom"><c:out
									value="${composant.promotion}" /></span> <a href="#">click for offer</a>
						</p>
						<div class="btn_form">
							<form>
								<input type="submit" value="buy" title="">
							</form>
						</div>
						<span class="m_link"><a href="#">login to save in
								wishlist</a> </span>
						<p class="m_text2">
							<c:out value="${composant.description}" />
						</p>
					</div>
					<div class="clear"></div>
					<div class="clients">
						<h3 class="m_3">10 autres produits de la même catégorie</h3>
						<ul id="flexiselDemo3">
							<li><img src="images/s5.jpg" /><a href="#">Category</a>
							<p>Rs 600</p></li>
							<li><img src="images/s6.jpg" /><a href="#">Category</a>
							<p>Rs 850</p></li>
							<li><img src="images/s7.jpg" /><a href="#">Category</a>
							<p>Rs 900</p></li>
							<li><img src="images/s8.jpg" /><a href="#">Category</a>
							<p>Rs 550</p></li>
							<li><img src="images/s9.jpg" /><a href="#">Category</a>
							<p>Rs 750</p></li>
						</ul>
						<script type="text/javascript">
							$(window).load(function() {
								$("#flexiselDemo1").flexisel();
								$("#flexiselDemo2").flexisel({
									enableResponsiveBreakpoints : true,
									responsiveBreakpoints : {
										portrait : {
											changePoint : 480,
											visibleItems : 1
										},
										landscape : {
											changePoint : 640,
											visibleItems : 2
										},
										tablet : {
											changePoint : 768,
											visibleItems : 3
										}
									}
								});

								$("#flexiselDemo3").flexisel({
									visibleItems : 5,
									animationSpeed : 1000,
									autoPlay : true,
									autoPlaySpeed : 3000,
									pauseOnHover : true,
									enableResponsiveBreakpoints : true,
									responsiveBreakpoints : {
										portrait : {
											changePoint : 480,
											visibleItems : 1
										},
										landscape : {
											changePoint : 640,
											visibleItems : 2
										},
										tablet : {
											changePoint : 768,
											visibleItems : 3
										}
									}
								});

							});
						</script>
						<script type="text/javascript" src="js/jquery.flexisel.js"></script>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />