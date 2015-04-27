package com.easygeek.entite;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)

public class ComposantFournisseur implements java.io.Serializable {
	
	private static final long serialVersionUID = 1L;
	private ComposantFournisseurId id;
	private Double prixAchatHt;

	public ComposantFournisseur() {
	}

	public ComposantFournisseur(ComposantFournisseurId id) {
		this.id = id;
	}

	public ComposantFournisseur(ComposantFournisseurId id, Double prixAchatHt) {
		this.id = id;
		this.prixAchatHt = prixAchatHt;
	}

	public ComposantFournisseurId getId() {
		return this.id;
	}

	public void setId(ComposantFournisseurId id) {
		this.id = id;
	}

	public Double getPrixAchatHt() {
		return this.prixAchatHt;
	}

	public void setPrixAchatHt(Double prixAchatHt) {
		this.prixAchatHt = prixAchatHt;
	}

}
