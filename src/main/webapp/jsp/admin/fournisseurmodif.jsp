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
			</tr>
			<form:form action="http://localhost:8080/ArchitectureSOAVue/admin/fournisseurs/modifier" method="POST" modelAttribute="fournisseur">
			<tr>
			  <td><form:input path="nom" placeholder="Nom" /></td>
			  <td><form:input path="telephone" placeholder="T�l�phone" /></td>
			  <td><form:input path="adresse" placeholder="Adresse" /></td>
			  <td><form:input path="codePostal" placeholder="Code postal" /></td>
			  <td><form:input path="ville" placeholder="Ville" /></td>
			  <td><input type="submit" value="Ajouter" /></td>
			</tr>
	  		</form:form>
		</table>
	</div>
</div>

</body>
</html>