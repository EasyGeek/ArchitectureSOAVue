<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="layout/header.jsp"></jsp:include>

<h2>Ajouter un Fournisseur</h2>
<div class="content">
	<div class="formulaire">
		<table>
			<form:form action="http://localhost:8080/ArchitectureSOAVue/admin/fournisseurs/ajouter" method="POST" modelAttribute="fournisseur">
				<tr>
				  <td><form:input path="nom" placeholder="Nom" /></td>
				  <td><form:input path="telephone" placeholder="Téléphone" /></td>
				  <td><form:input path="adresse" placeholder="Adresse" /></td>
				  <td><form:input path="codePostal" placeholder="Code postal" /></td>
				  <td><form:input path="ville" placeholder="Ville" /></td>
				  <td><input type="submit" value="Ajouter" /></td>
				</tr>
	  		</form:form>
		</table>
	</div>
</div>

<h2>Liste des fournisseurs</h2>
<div class="content">
	<table class="table table-condensed table-bordered">
		<tr id="tableTitle">
			<td>Nom</td>
			<td>Téléphone</td>
			<td>Adresse</td>
			<td>Ville</td>
			<td>Code postal</td>
			<td></td>
		</tr>
			<c:forEach var="nomVariable" items="${fournisseurList}">
				<tr>
					<td>
						<c:out value="${nomVariable.nom}" />
					</td>
					<td>
						<c:out value="${nomVariable.telephone}" />
					</td>
					<td>
						<c:out value="${nomVariable.adresse}" />
					</td>
					<td>
						<c:out value="${nomVariable.ville}" /></td>
					<td>
						<c:out value="${nomVariable.codePostal}" />
					</td>
					<td>
						<form:form action ="http://localhost:8080/ArchitectureSOAVue/admin/fournisseur/modifier/${nomVariable.fournisseurId}" method="POST"><input type="submit" value="Modifier" /></form:form>
					</td>
					<td>
						<form:form action ="http://localhost:8080/ArchitectureSOAVue/admin/fournisseurs/supprimer/${nomVariable.fournisseurId}" method="POST"><input type="submit" value="Supprimer" /></form:form>
					</td>			
					
				</tr>
		</c:forEach>
	</table>
</div>
<jsp:include page="layout/footer.jsp"></jsp:include>