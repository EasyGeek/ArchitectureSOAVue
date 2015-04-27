package com.easygeek.entite;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)

public class TypeLivraison implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer typeLivraisonId;
	private String libelle;
	private Double prix;

	public TypeLivraison() {
	}

	public TypeLivraison(String libelle, Double prix) {
		this.libelle = libelle;
		this.prix = prix;
	}

	public Integer getTypeLivraisonId() {
		return this.typeLivraisonId;
	}

	public void setTypeLivraisonId(Integer typeLivraisonId) {
		this.typeLivraisonId = typeLivraisonId;
	}

	public String getLibelle() {
		return this.libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	public Double getPrix() {
		return this.prix;
	}

	public void setPrix(Double prix) {
		this.prix = prix;
	}

}
