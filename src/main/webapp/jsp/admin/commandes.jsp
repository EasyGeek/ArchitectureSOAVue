<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="layout/header.jsp"></jsp:include>

<h2>Liste des clients</h2>


<div class="content">
	<table class="table table-condensed table-bordered">
		<tr id="tableTitle">
			<th>N° Commande</th>
			<th>Client</th>
			<th>Produit</th>
			<th>Marque</th>
			<th>Type</th>
			<th>Promotion</th>
			<th>Quantité</th>
			<th>Date</th>
		</tr>
		<c:forEach var="commande" items="${detailsCommandeList}">
		
			<tr>
				<td><c:out value="${commande.id}" /></td>
				<td><c:out value="${commande.commande.client.nom}" /></td>
				<td><c:out value="${commande.composant.nom}" /></td>
				<td><c:out value="${commande.composant.marqueId.libelle}" /></td>
				<td><c:out value="${commande.composant.typeId.libelle}" /></td>
				<td><c:out value="${commande.composant.promotion}" /></td>
				<td><c:out value="${commande.quantite}" /></td>
				<td><c:out value="${commande.commande.dateCommande}" /></td>
			</tr>
		</c:forEach>
	</table>
</div>
<jsp:include page="layout/footer.jsp"></jsp:include>