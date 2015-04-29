f<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="layout/header.jsp"></jsp:include>

<h2>Ajouter un Fournisseur</h2>
<div class="content">
	<div class="formulaire">
		<table>
			<form:form
				action="http://localhost:8080/ArchitectureSOAVue/admin/fournisseurs/ajouter"
				method="POST" modelAttribute="fournisseur">
				<tr>
					<th><form:input path="nom" placeholder="Nom" /></th>
					<th><form:input path="telephone" placeholder="Téléphone" /></th>
					<th><form:input path="adresse" placeholder="Adresse" /></th>
					<th><form:input path="codePostal" placeholder="Code postal" /></th>
					<th><form:input path="ville" placeholder="Ville" /></th>
					<th><input type="submit" value="Ajouter" /></th>
				</tr>
			</form:form>
		</table>
	</div>
</div>

<h2>Liste des fournisseurs</h2>
<div class="content">
	<table class="table table-condensed table-bordered">
		<tr id="tableTitle">
			<th>Nom</th>
			<th>Téléphone</th>
			<th>Adresse</th>
			<th>Ville</th>
			<th>Code postal</th>
			<th>Modifier</th>
			<th>Supprimer</th>
		</tr>
		<c:forEach var="nomVariable" items="${fournisseurList}">
			<tr>
				<td><c:out value="${nomVariable.nom}" /></td>
				<td><c:out value="${nomVariable.telephone}" /></td>
				<td><c:out value="${nomVariable.adresse}" /></td>
				<td><c:out value="${nomVariable.ville}" /></td>
				<td><c:out value="${nomVariable.codePostal}" /></td>
				<td><form:form
						action="http://localhost:8080/ArchitectureSOAVue/admin/fournisseurs/modifier/${nomVariable.fournisseurId}"
						method="POST">
						<input type="submit" value="Modifier" />
					</form:form></td>
				<td><form:form
						action="http://localhost:8080/ArchitectureSOAVue/admin/fournisseurs/supprimer/${nomVariable.fournisseurId}"
						method="POST">
						<input type="submit" value="Supprimer" />
					</form:form></td>

			</tr>
		</c:forEach>
	</table>
</div>
<jsp:include page="layout/footer.jsp"></jsp:include>