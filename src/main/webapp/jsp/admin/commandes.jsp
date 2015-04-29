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
			<td>N° Commande</td>
			<td>Client</td>
			<td>Produit</td>
			<td>Marque</td>
			<td>Type</td>
			<td>Promotion</td>
			<td>Quantité</td>
			<td>Date</td>
			<td>Fournisseur</td>
		</tr>
		<c:forEach var="commande" items="${detailsCommandeList}">
		
			<tr>
				<td><c:out value="${commande.id}" /></td>
				<td><c:out value="${commande.client.id}" /></td>
				<td><c:out value="${commande.composant.nom}" /></td>
				<td><c:out value="${commande.composant.marqueId.libelle}" /></td>
				<td><c:out value="${commande.composant.typeId.libelle}" /></td>
				<td><c:out value="${commande.composant.promotion}" /></td>
				<td><c:out value="${commande.quantite}" /></td>
				<td><c:out value="{commande.commande.dateCommande}" /></td>
				<td><a href="http://localhost:8090/client/" >Modifier</a>
				<td><form:form action ="http://localhost:8090/client/supprimer/${nomVariable.clientId}" method="DELETE"><input type="submit" value="Supprimer" /></form:form></td>			
			</tr>
		</c:forEach>
	</table>
</div>
<jsp:include page="layout/footer.jsp"></jsp:include>