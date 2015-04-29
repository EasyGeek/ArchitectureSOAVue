<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
	<link rel="stylesheet" href="http://localhost:8080/ArchitectureSOAVue/css/bootstrap.css">
	<link rel="stylesheet" href="http://localhost:8080/ArchitectureSOAVue/css/backStyle.css">
</head>
<body>
	<div id="logo">
		<a href="index.html"><img src="http://localhost:8080/ArchitectureSOAVue/images/logo.png" alt=""/></a>
	</div>
	<div id="menu">
	<table>
		<tr>
			<td><p><a href="http://localhost:8080/ArchitectureSOAVue/admin/fournisseurs">Fournisseurs</a></p>
			<td><p><a href="http://localhost:8080/ArchitectureSOAVue/admin/clients">Clients</a></p>
			<td><p><a href="http://localhost:8080/ArchitectureSOAVue/admin/stocks">Stocks</a></p>
			<td><p><a href="http://localhost:8080/ArchitectureSOAVue/admin/commandes">Commandes</a></p>
		</tr>
	</table>
</div>