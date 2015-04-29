<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="layout/header.jsp"></jsp:include>

<h2>Stock</h2>
<div class="content">
	<table class="table table-condensed table-bordered">
		<tr id="tableTitle">
			<th>Réaprovisionnement</th>
			<th>Produit</th>
			<th>Marque</th>
			<th>Type</th>
			<th>Quantité</th>
			<th>Fournisseur</th>
			<th>Date</th>
		</tr>
		<c:forEach var="stock" items="${stockList}">
			<tr>
				<td><c:out value="${stock.reapprovisionnement}" /></td>
				<td><c:out value="${stock.composant.nom}" /></td>
				<td><c:out value="${stock.composant.marqueId.libelle }" /></td>
				<td><c:out value="${stock.composant.typeId.libelle }" /></td>
				<td><c:out value="${stock.quantite}" /></td>
				<td><c:out value="${stock.fournisseur.nom}" /></td>
				<td><c:out value="${stock.date}" /></td>
			</tr>
		</c:forEach>

	</table>
</div>
<jsp:include page="layout/footer.jsp"></jsp:include>
</body>
</html>