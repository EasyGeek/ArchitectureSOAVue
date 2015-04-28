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
			<td>Nom</td>
			<td>Prénom</td>
			<td>Email</td>
			<td>Téléphone</td>
			<td>Adresse</td>
			<td>Ville</td>
			<td>Code postal</td>
			<td>Modifier</td>
			<td>Supprimer</td>
		</tr>
		<c:forEach var="nomVariable" items="${clientList}">
			<tr>
				<td><c:out value="${nomVariable.nom}" /></td>
				<td><c:out value="${nomVariable.prenom}" /></td>
				<td><c:out value="${nomVariable.email}" /></td>
				<td><c:out value="${nomVariable.telephone}" /></td>
				<td><c:out value="${nomVariable.adresse}" /></td>
				<td><c:out value="${nomVariable.ville}" /></td>
				<td><c:out value="${nomVariable.codePostal}" /></td>
				<td><a href="http://localhost:8090/client/" >Modifier</a>
				<td><form:form action ="http://localhost:8090/client/supprimer/${nomVariable.clientId}" method="DELETE"><input type="submit" value="Supprimer" /></form:form></td>			
			</tr>
		</c:forEach>
	</table>
</div>
<jsp:include page="layout/footer.jsp"></jsp:include>