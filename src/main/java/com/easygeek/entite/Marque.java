package com.easygeek.entite;

public class Marque implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer marqueId;
	private String libelle;

	public Marque() {
	}

	public Marque(String libelle) {
		this.libelle = libelle;
	}

	public Integer getMarqueId() {
		return this.marqueId;
	}

	public void setMarqueId(Integer marqueId) {
		this.marqueId = marqueId;
	}

	public String getLibelle() {
		return this.libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

}
