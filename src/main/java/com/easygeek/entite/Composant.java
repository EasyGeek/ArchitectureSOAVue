package com.easygeek.entite;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)

public class Composant implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private String reference;
	private String nom;
	private String description;
	private Double prixHt;
	private Double pourcentageMarge;
	private String image;
	private Double promotion;
	private Integer marqueId;
	private Integer typeId;

	public Composant() {
	}

	public Composant(String reference) {
		this.reference = reference;
	}

	public Composant(String reference, String nom, String description,
			Double prixHt, Double pourcentageMarge, String image,
			Double promotion, Integer marqueId, Integer typeId) {
		this.reference = reference;
		this.nom = nom;
		this.description = description;
		this.prixHt = prixHt;
		this.pourcentageMarge = pourcentageMarge;
		this.image = image;
		this.promotion = promotion;
		this.marqueId = marqueId;
		this.typeId = typeId;
	}

	public String getReference() {
		return this.reference;
	}

	public void setReference(String reference) {
		this.reference = reference;
	}

	public String getNom() {
		return this.nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Double getPrixHt() {
		return this.prixHt;
	}

	public void setPrixHt(Double prixHt) {
		this.prixHt = prixHt;
	}

	public Double getPourcentageMarge() {
		return this.pourcentageMarge;
	}

	public void setPourcentageMarge(Double pourcentageMarge) {
		this.pourcentageMarge = pourcentageMarge;
	}

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Double getPromotion() {
		return this.promotion;
	}

	public void setPromotion(Double promotion) {
		this.promotion = promotion;
	}

	public Integer getMarqueId() {
		return this.marqueId;
	}

	public void setMarqueId(Integer marqueId) {
		this.marqueId = marqueId;
	}

	public Integer getTypeId() {
		return this.typeId;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}

}
