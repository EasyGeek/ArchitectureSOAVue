<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head></head>
<body>
	<div class="col-md-9 content">
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
			
			hello
		</table>
	</div>

</body>
</html>