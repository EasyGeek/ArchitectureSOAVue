<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<jsp:include page="header.jsp" />

<div>
	<h2>Liste des composants</h2>
	<c:forEach var="composant" items="${composantList}">
		<div class="top-box">
			<div class="col_1_of_3 span_1_of_3">
				<a href="">
					<div class="inner_content clearfix">
						<div class="product_image">
							<img alt="" src="images/${composant.image}" />
						</div>
						<div class="sale-box">
							<span class="on_sale title_shop">New</span>
						</div>
						<div class="price">
							<div class="cart-left">
								<p class="title">
									<c:out value="${composant.nom}" />
								</p>
								<div class="price1">
									<span class="actual"><c:out value="${composant.prixHt}" /></span>
								</div>
							</div>
							<div class="cart-right"></div>
							<div class="clear"></div>
						</div>
					</div>
				</a>
			</div>
		</div>
	</c:forEach>
</div>
<table class="table table-condensed table-bordered">
	<tr id="tableTitle">
		<td>Nom</td>
		<td>description</td>
		<td>prixHt</td>
		<td>pourcentageMarge</td>
		<td>image</td>
		<td>promotion</td>
		<!-- <td>marqueId</td>
		<td>typeId</td> -->
	</tr>
	<c:forEach var="composant" items="${composantList}">
		<tr>
			<td><c:out value="${composant.nom}" /></td>
			<td><c:out value="${composant.description}" /></td>
			<td><c:out value="${composant.prixHt}" /></td>
			<td><c:out value="${composant.pourcentageMarge}" /></td>
			<td><c:out value="${composant.image}" /></td>
			<td><c:out value="${composant.promotion}" /></td>
			<%-- <td><c:out value="${composant.marqueId}" /></td>
			<td><c:out value="${composant.typeId}" /></td> --%>
			<td></td>
		</tr>
	</c:forEach>
</table>
<h2>Liste des composants</h2>
<table class="table table-condensed table-bordered">
	<tr id="tableTitle">
		<td>libelle</td>
	</tr>
	<c:forEach var="marque" items="${marqueList}">
		<tr>
			<td><a class="color6"
				href="http://localhost:8080/ArchitectureSOAVue/catalogue/marque/${marque.marqueId}"><c:out
						value="${marque.libelle}" /></a></td>
			<td></td>
		</tr>
	</c:forEach>
</table>


<jsp:include page="footer.jsp"></jsp:include>
