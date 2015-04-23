package com.easygeek.entite;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)

public class Fournisseur implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer fournisseurId;
	private String nom;
	private String telephone;
	private String adresse;
	private String codePostal;
	private String ville;

	public Fournisseur() {
	}

	public Fournisseur(String nom, String telephone, String adresse,
			String codePostal, String ville) {
		this.nom = nom;
		this.telephone = telephone;
		this.adresse = adresse;
		this.codePostal = codePostal;
		this.ville = ville;
	}

	public Integer getFournisseurId() {
		return this.fournisseurId;
	}

	public void setFournisseurId(Integer fournisseurId) {
		this.fournisseurId = fournisseurId;
	}

	public String getNom() {
		return this.nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getAdresse() {
		return this.adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public String getCodePostal() {
		return this.codePostal;
	}

	public void setCodePostal(String codePostal) {
		this.codePostal = codePostal;
	}

	public String getVille() {
		return this.ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

}
