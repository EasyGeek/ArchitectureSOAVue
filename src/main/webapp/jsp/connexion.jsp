<jsp:include page="header.jsp"/>
<div class="login">
          	<div class="wrap">
				<div class="col_1_of_login span_1_of_login">
					<h4 class="title">Vous êtes nouveau ?</h4>
					<p>Inscrivez-vous gratuitement et rapidement. Une fois inscrit, vous pourrez avoir un suivi de vos commandes et accéder à tout le contenu de l'application.</p>
					<div class="button1">
					   <a href="http://localhost:8080/ArchitectureSOAVue/register"><input type="submit" name="Submit" value="S'inscrire"></a>
					 </div>
					 <div class="clear"></div>
				</div>
				<div class="col_1_of_login span_1_of_login">
				<div class="login-title">
	           		<h4 class="title">Connexion</h4>
					<div id="loginbox" class="loginbox">
						<form action="http://localhost:8080/ArchitectureSOAVue/connexion" method="post" name="login" id="login-form">
						  <fieldset class="input">
						    <p id="login-form-username">
						      <label for="modlgn_username">Adresse email</label>
						      <input id="modlgn_username" type="text" name="email" class="inputbox" size="18" autocomplete="off">
						    </p>
						    <p id="login-form-password">
						      <label for="modlgn_passwd">Mot de passe</label>
						      <input id="modlgn_passwd" type="password" name="password" class="inputbox" size="18" autocomplete="off">
						    </p>
						    <div class="remember">
							    <p id="login-form-remember">
							      <label for="modlgn_remember"><a href="#">Mot de passe oublié ? </a></label>
							   </p>
							    <input type="submit" name="Submit" class="button" value="Se connecter"><div class="clear"></div>
							 </div>
						  </fieldset>
						 </form>
					</div>
			    </div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
<jsp:include page="footer.jsp"/>