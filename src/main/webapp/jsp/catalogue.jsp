<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"/>
<div class="mens">
	<div class="main">
		<div class="wrap">
			<div class="cont span_2_of_3">
				<h2 class="head">Catalogue</h2>
				<div class="mens-toolbar">
					<div class="sort">
						<div class="sort-by">
							<label>Trier par</label> <select>
								<option value="">Nom</option>
								<option value="">Prix</option>
							</select> <a href=""><img src="http://localhost:8080/ArchitectureSOAVue/images/arrow2.gif" alt=""
								class="v-middle"></a>
						</div>
					</div>
					<div class="pager">
						<div class="limiter visible-desktop">
							<label>Montrer</label> <select>
								<option value="" selected="selected">10</option>
								<option value="">15</option>
								<option value="">30</option>
							</select> par page
						</div>
						<ul class="dc_pagination dc_paginationA dc_paginationA06">
							<li><a href="#" class="previous">Pages</a></li>
							<li><a href="#">1</a></li>
						</ul>
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
				</div>
		<div class="top-box">
				<c:forEach var="type" items="${composantList}">
				<div class="col_1_of_3 span_1_of_3">
					<a href="http://localhost:8080/ArchitectureSOAVue/article/${type.reference}">
					<div class="inner_content clearfix">
					<div class="product_image">
						<img src="http://localhost:8080/ArchitectureSOAVue/images/${type.image}" alt=""/>
					</div>
					 <div class="sale-box"><span class="on_sale title_shop">New</span></div>	
                    <div class="price">
					   <div class="cart-left">
							<p class="title"><c:out value="${type.nom}" /></p>
							<div class="price1">
							  <span class="actual"><c:out value="${type.prixHt}" />&euro;</span>
							</div>
						</div>
						<div class="cart-right"> </div>
						<div class="clear"></div>
					 </div>
							</div>
						</a>
					</div>
					</c:forEach>
					<div class="clear"></div>
				</div>
			</div>
			<div class="rsidebar span_1_of_left">
				<section class="sky-form">
					<h4>Categories</h4>
					<ul class="color-list">
						<c:forEach var="type" items="${typeList}">
							<li><a class="color6"
									href="http://localhost:8080/ArchitectureSOAVue/catalogue/type/${type.typeId}"><c:out
									value="${type.libelle}" /></a></li>
						</c:forEach>
					</ul>
					<h4>Marques</h4>
					<ul class="color-list">
					<c:forEach var="marque" items="${marqueList}">
						<li><a class="color6"
								href="http://localhost:8080/ArchitectureSOAVue/catalogue/marque/${marque.marqueId}"><c:out
								value="${marque.libelle}" /></a></li>
					</c:forEach>
					</ul>
				</section>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</div>

<script src="web/js/jquery.easydropdown.js">

</script><jsp:include page="footer.jsp" />
