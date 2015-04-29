package com.easygeek.entite;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)

public class DetailsCommande implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;
	private Float quantite;
	private Composant composant;
	private Commande commande;
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public Integer getId() {
		return id;
	}

	public Float getQuantite() {
		return this.quantite;
	}

	public void setQuantite(Float quantite) {
		this.quantite = quantite;
	}
	
	public Composant getComposant() {
		return this.composant;
	}

	public void setComposant(Composant composant) {
		this.composant = composant;
	}

	public Commande getCommande() {
		return this.commande;
	}

	public void setCommande(Commande commande) {
		this.commande = commande;
	}

}
