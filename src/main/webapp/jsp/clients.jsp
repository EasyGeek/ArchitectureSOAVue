<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="layout/header.jsp"></jsp:include>

<h2>Liste des clients</h2>
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
			<td><a href="http://localhost:8090/client/modifier" method="POST" >Modifier</a>
			<td><form:form action ="http://localhost:8090/client/supprimer" method="POST"></form:form></td>			
		</tr>
	</c:forEach>
</table>
<br />

<h2>Ajouter un Client</h2>
<br />

<table>
	<form:form action="http://localhost:8090/client/ajouter" method="POST">
		<td><form:input path="nom" placeholder="Nom" /></td>
		<td><form:input path="prenom" placeholder="Prénom" /></td>
		<td><form:input path="password" placeholder="Password" /></td>
		<td><form:input path="email" placeholder="Email" /></td>
		<td><form:input path="telephone" placeholder="Téléphone" /></td>
		<td><form:input path="adresse" placeholder="Adresse" /></td>
		<td><form:input path="codePostal" placeholder="Code postal" /></td>
		<td><form:input path="ville" placeholder="Ville" /></td>
		<td><input type="submit" value="Ajouter" /></td>
	</form:form>
</table>
<jsp:include page="layout/footer.jsp"></jsp:include>