<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="layout/header.jsp"></jsp:include>

<h2>Ajouter un Fournisseur</h2>
<div class="content">
	<div class="formulaire">
		<table class="table" >
			<form:form
				action="http://localhost:8080/ArchitectureSOAVue/admin/fournisseurs/modifier"
				method="POST" modelAttribute="fournisseur">
				<tr>
					<th>Nom</th>
					<td><form:input path="nom" placeholder="Nom"
							value="${fournisseur.nom}" /></td>
				</tr>
				<tr>
					<th>Numéro de téléphone</th>
					<td><form:input path="telephone" placeholder="Téléphone"
							value="${fournisseur.telephone}" /></td>
				</tr>
					<th>Adresse</th>
					<td><form:input path="adresse" placeholder="Adresse"
							value="${fournisseur.adresse}" /></td>
				<tr>
					<th>Code Postal</th>
					<td><form:input path="codePostal" placeholder="Code postal"
							value="${fournisseur.codePostal}" /></td>
				</tr>
				<tr>
					<th>Ville</th>
					<td><form:input path="ville" placeholder="Ville"
							value="${fournisseur.ville}" /></td>
				</tr>
				<tr>	
					<th colspan="2"><input type="submit" value="Modifier" /></th>
				</tr>
			</form:form>
		</table>
	</div>
</div>

</body>
</html>