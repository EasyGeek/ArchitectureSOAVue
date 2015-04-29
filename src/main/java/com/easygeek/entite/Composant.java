package com.easygeek.entite;

public class Composant implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private String reference;
	private String nom;
	private String description;
	private Double prixHt;
	private Double pourcentageMarge;
	private String image;
	private Double promotion;
	private Marque marque;
	private Type type;

	public Composant() {
	}

	public Composant(String reference) {
		this.reference = reference;
	}

	public Composant(String reference, String nom, String description,
			Double prixHt, Double pourcentageMarge, String image,
			Double promotion, Marque marqueId, Type typeId) {
		this.reference = reference;
		this.nom = nom;
		this.description = description;
		this.prixHt = prixHt;
		this.pourcentageMarge = pourcentageMarge;
		this.image = image;
		this.promotion = promotion;
		this.marque = marqueId;
		this.type = typeId;
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

	public Marque getMarqueId() {
		return this.marque;
	}

	public void setMarqueId(Marque marqueId) {
		this.marque = marqueId;
	}

	public Type getTypeId() {
		return this.type;
	}

	public void setTypeId(Type typeId) {
		this.type = typeId;
	}

}
