<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="layout/header.jsp"></jsp:include>
 
  <form:form id="updateForm" modelAttribute="fournisseur" method="post"  
   action="update">  
   <table width="400px" height="150px">  
    <tr>  
     <td><form:label path="nom">nom</form:label></td>  
     <td><form:input path="nom" value=""${nomVariable.nom}"" /></td>  
    </tr>  
    <tr>  
     <td><form:label path="telephone">telephone</form:label></td>  
     <td><form:input path="telephone" value="${nomVariable.telephone}"/></td>  
    </tr>  
    <tr>  
     <td><form:label path="adresse">adresse</form:label></td>  
     <td><form:input path="adresse" value="${nomVariable.adresse}"/></td>  
    </tr>  
    <tr>  
     <td><form:label path="codePostal">codePostal</form:label></td>  
     <td><form:input path="codePostal" value="${nomVariable.ville}"/></td>  
    </tr>  
    <tr>  
     <td></td>  
     <td><input type="submit" value="Update" />  
     </td>  
    </tr>  
   </table>  
  </form:form>
</body>
</html>
