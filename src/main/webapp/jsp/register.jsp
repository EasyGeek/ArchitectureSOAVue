<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp" />
<div class="register_account">
	<div class="wrap">
		<h4 class="title">Inscription</h4>
		<form:form
		   action="http://localhost:8080/ArchitectureSOAVue/client/ajouter"
		   method="POST" modelAttribute="client">
			<div class="col_1_of_2 span_1_of_2">
				<div><form:input path="nom" placeholder="Nom" cssClass="inputbox" id="nom" size="18" autocomplete="off"/></div>
				<div><form:input path="prenom" placeholder="Prénom" cssClass="inputbox" id="prenom" size="18" autocomplete="off"/></div>
				<div><form:input path="email" placeholder="Email" cssClass="inputbox" id="email" size="18" autocomplete="off"/></div>
				<div><form:password path="password" placeholder="Password" cssClass="inputbox" id="password" size="18" autocomplete="off"/></div>
			</div>
			<div class="col_1_of_2 span_1_of_2">
				<div><form:input path="telephone" placeholder="Téléphone" cssClass="inputbox" id="telephone" size="18" autocomplete="off"/></div>
				<div><form:input path="adresse" placeholder="Adresse" cssClass="inputbox" id="adresse" size="18" autocomplete="off"/></div>
				<div><form:input path="codePostal" placeholder="Code postal" cssClass="inputbox" id="codePostal" size="18" autocomplete="off"/></div>
				<div><form:input path="ville" placeholder="Ville" cssClass="inputbox" id="ville" size="18" autocomplete="off"/></div>
			</div>
							        
			<button class="grey">Valider</button>
			<div class="clear"></div>
		</form:form>
		</div>
	</div>
<jsp:include page="footer.jsp"/>