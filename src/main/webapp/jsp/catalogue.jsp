<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- <jsp:include page="layout/header.jsp"></jsp:include> --%>
<form:form action="http://localhost:8090/fournisseur/ajouter" method="POST">
	<p>
		<form:input path="nom" placeholder="Nom" />
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

<h2>Liste des fournisseurs</h2>
<table class="table table-condensed table-bordered">
	<tr id="tableTitle">
		<td>Nom</td>
		<td>Téléphone</td>
		<td>Adresse</td>
		<td>Ville</td>
		<td>Code postal</td>
	</tr>
	<c:forEach var="nomVariable" items="${fournisseurList}">
		<tr>
			<td><c:out value="${nomVariable.nom}" /></td>
			<td><c:out value="${nomVariable.telephone}" /></td>
			<td><c:out value="${nomVariable.adresse}" /></td>
			<td><c:out value="${nomVariable.ville}" /></td>
			<td><c:out value="${nomVariable.codePostal}" /></td>
			<td></td>
		</tr>
	</c:forEach>
</table>
<%-- <jsp:include page="layout/footer.jsp"></jsp:include> --%>