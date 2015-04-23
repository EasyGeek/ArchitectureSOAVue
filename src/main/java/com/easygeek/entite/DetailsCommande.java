package com.easygeek.entite;

public class DetailsCommande implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private DetailsCommandeId id;
	private Float quantite;

	public DetailsCommande() {
	}

	public DetailsCommande(DetailsCommandeId id) {
		this.id = id;
	}

	public DetailsCommande(DetailsCommandeId id, Float quantite) {
		this.id = id;
		this.quantite = quantite;
	}

	public DetailsCommandeId getId() {
		return this.id;
	}

	public void setId(DetailsCommandeId id) {
		this.id = id;
	}

	public Float getQuantite() {
		return this.quantite;
	}

	public void setQuantite(Float quantite) {
		this.quantite = quantite;
	}

}
