<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp" />
<html>
<head>
    <title></title>
</head>
<body>
<div class="content">
	<div class="loginbox">
		<form:form
	           action="http://localhost:8080/ArchitectureSOAVue/client/ajouter"
	           method="POST" modelAttribute="client">
			<fieldset class="input">
	         	<p>
	         		<label for="nom">Nom</label>
			    	<form:input path="nom" placeholder="Nom" cssClass="inputbox" id="nom" size="18" autocomplete="off"/>
			    </p>
			    <p>
			    	<label for="prenom">Prénom</label>
			    	<form:input path="prenom" placeholder="Prénom" cssClass="inputbox" id="prenom" size="18" autocomplete="off"/>
			    </p>
			    <p>
			    	<label for="email">Email</label>
			    	<form:input path="email" placeholder="Email" cssClass="inputbox" id="email" size="18" autocomplete="off"/>
			    </p>
			    <p>
			    	<label for="password">Password</label>
			    	<form:password path="password" placeholder="Password" cssClass="inputbox" id="password" size="18" autocomplete="off"/>
			    </p>
			    <p>
			    	<label for="telephone">Téléphone</label>
			    	<form:input path="telephone" placeholder="Téléphone" cssClass="inputbox" id="telephone" size="18" autocomplete="off"/>
			    </p>
			    <p>
			    	<label for="adresse">Adresse</label>
			    	<form:input path="adresse" placeholder="Adresse" cssClass="inputbox" id="adresse" size="18" autocomplete="off"/>
			    </p>
			    <p>
			    	<label for="codePostal">Code postal</label>
			    	<form:input path="codePostal" placeholder="Code postal" cssClass="inputbox" id="codePostal" size="18" autocomplete="off"/>
			    </p>
			    <p>
			    	<label for="ville">Ville</label>
			    	<form:input path="ville" placeholder="Ville" cssClass="inputbox" id="ville" size="18" autocomplete="off"/>
		    	</p>
				<input type="submit" value="Ajouter" class="button"/>
			</fieldset>
		</form:form>
	</div>
</div>
</body>
</html>
