<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp" />
<div class="main">
	<div class="mens">
		<div class="main">
			<div class="wrap">
				<div class="cont span_2_of_3">
					<div class="grid images_3_of_2">
						<div id="container">
							<div id="products_example">
								<div id="products">
									<div class="slides_container">
										<img class="a" id="img1" src="http://localhost:8080/ArchitectureSOAVue/images/${composant.image}" alt="${composant.nom}" />
									</div>
									<ul class="pagination">
										<li><img class="a" id="img1" src="http://localhost:8080/ArchitectureSOAVue/images/${composant.image}" alt="${composant.nom}" /></li>
										<div class="clear"></div>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="desc1 span_3_of_2">
						<h3 class="m_3">
							<c:out value="${composant.nom}" />
						</h3>
						<p class="m_5">
							<c:out value="${composant.prixHt}" />&euro;
						</p>
						<div class="btn_form">
							<form>
								<input type="submit" value="Acheter">
							</form>
						</div>
						<span class="m_link"><a href="http://localhost:8080/ArchitectureSOAVue/connexion">Connectez-vous pour ajouter à votre panier !</a> </span>
						<p class="m_text2">
							<c:out value="${composant.description}" />
						</p>
					</div>
					<div class="clear"></div>
					</div>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />