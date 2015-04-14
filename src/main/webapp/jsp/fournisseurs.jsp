<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">

<head></head>
<body>
	<div>
		<form:form action="http://localhost:8090/fournisseur/ajouter"
			method="POST">
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
	</div>
	<div>
		<h2>Liste des fournisseurs</h2>
		<table class="table table-condensed table-bordered">
			<tr id="tableTitle">
				<td>Id</td>
				<td>Ville</td>
			</tr>
			<c:forEach var="f" items="${fournisseurList}">
				<tr>
					<td><c:out value="${f.nom}" /></td>
					<td><c:out value="${f.adresse}" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>

</body>
</html>