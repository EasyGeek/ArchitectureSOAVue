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
			<td>Réaprovisionnement</td>
			<td>Produit</td>
			<td>Marque</td>
			<td>Type</td>
			<td>Quantité</td>
			<td>Fournisseur</td>
			<td>Date</td>
		</tr>
		<c:forEach var="nomVariable" items="${stockList}">			
			<tr>
				<td><c:out value="${nomVariable.reapprovisionnement}" /></td>
				<td><c:out value="${nomVariable.composant.nom}" /></td>
				<td><c:out value="${nomVariable.marqueId }" /></td>
				<td><c:out value="${nomVariable.typeId }" /></td>
				<td><c:out value="${nomVariable.quantite}" /></td>
				<td><c:out value="${nomVariable.fournisseur.nom}" /></td>
				<td><c:out value="${nomVariable.date}" /></td>
			</tr>
		</c:forEach>
	
	</table>
</div>
<jsp:include page="layout/footer.jsp"></jsp:include>
</body>
</html>