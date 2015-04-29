package com.easygeek.entite;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)

public class Stock implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	private Integer idStock;
	private Date dateStock;
	private Boolean reapprovisionnement;
	private Integer quantite;
	private Composant composant;
	private Fournisseur fournisseur;
	
	public Integer getId() {
		return this.idStock;
	}

	public void setId(Integer idStock) {
		this.idStock = idStock;
	}
	
	public Composant getComposant() {
		return this.composant;
	}

	public void setComposant(Composant composant) {
		this.composant = composant;
	}
	
	public Date getDate() {
		return this.dateStock;
	}

	public void setDate(Date dateStock) {
		this.dateStock = dateStock;
	}

	public Boolean getReapprovisionnement() {
		return this.reapprovisionnement;
	}

	public void setReapprovisionnement(Boolean reapprovisionnement) {
		this.reapprovisionnement = reapprovisionnement;
	}

	public Integer getQuantite() {
		return this.quantite;
	}

	public void setQuantite(Integer quantite) {
		this.quantite = quantite;
	}

	public Fournisseur getFournisseur() {
		return fournisseur;
	}

	public void setFournisseur(Fournisseur fournisseur) {
		this.fournisseur = fournisseur;
	}

}
