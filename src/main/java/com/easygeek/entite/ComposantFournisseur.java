package com.easygeek.entite;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class ComposantFournisseur implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;
	private Double prixAchatHt;
	private Composant composant;
	private Fournisseur fournisseur;

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getId() {
		return id;
	}

	public Double getPrixAchatHT() {
		return this.prixAchatHt;
	}

	public void setPrixAchatHT(Double prixAchatHt) {
		this.prixAchatHt = prixAchatHt;
	}

	public Composant getComposant() {
		return this.composant;
	}

	public void setComposant(Composant composant) {
		this.composant = composant;
	}

	public Fournisseur getFournisseur() {
		return this.fournisseur;
	}

	public void setFournisseur(Fournisseur fournisseur) {
		this.fournisseur = fournisseur;
	}

}
