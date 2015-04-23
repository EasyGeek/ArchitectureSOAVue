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
			<td></td>
		</tr>
	</c:forEach>
</table>

<form:form action="http://localhost:8090/client/ajouter" method="POST">
	<p>
		<form:input path="nom" placeholder="Nom" />
	</p>
	<p>
		<form:input path="prenom" placeholder="Prénom" />
	</p>
	<p>
		<form:input path="password" placeholder="Password" />
	</p>
	<p>
		<form:input path="email" placeholder="Email" />
	</p>
	<p>
		<form:input path="telephone" placeholder="Téléphone" />
	</p>
	<p>
		<form:input path="adresse" placeholder="Adresse" />
	</p>
	<p>
		<form:input path="codePostal" placeholder="Code postal" />
	</p>
	<p>
		<form:input path="ville" placeholder="Ville" />
	</p>
	<input type="submit" value="Ajouter" />
</form:form>

<br />
<br />
<jsp:include page="layout/footer.jsp"></jsp:include>