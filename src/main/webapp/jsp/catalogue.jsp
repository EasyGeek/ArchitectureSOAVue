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
<!-- 
{"reference":"10",
"nom":"AMD FX-9590 Eight-Core",
"description":"Attention chien méchant ! 
Avec une fréquence maximale de 5 GHz en mode Turbo Core,  performances.",
"prixHt":23.0,
"pourcentageMarge":65.0,
"image":"AMD FX-9590 Eight-Core.jpg",
"promotion":null,
"marqueId":18,
"typeId":4}
 -->
<h2>Liste des composants</h2>
<table class="table table-condensed table-bordered">
	<tr id="tableTitle">
		<td>Nom</td>
		<td>description</td>
		<td>prixHt</td>
		<td>pourcentageMarge</td>
		<td>image</td>
		<td>promotion</td>
		<td>marqueId</td>
		<td>typeId</td>
	</tr>
	<c:forEach var="composant" items="${catalogueList}">
		<tr>
			<td><c:out value="${composant.nom}" /></td>
			<td><c:out value="${composant.description}" /></td>
			<td><c:out value="${composant.prixHt}" /></td>
			<td><c:out value="${composant.pourcentageMarge}" /></td>
			<td><c:out value="${composant.image}" /></td>
			<td><c:out value="${composant.promotion}" /></td>
			<td><c:out value="${composant.marqueId}" /></td>
			<td><c:out value="${composant.typeId}" /></td>
			<td></td>
		</tr>
	</c:forEach>
</table>
<%-- <jsp:include page="layout/footer.jsp"></jsp:include> --%>
