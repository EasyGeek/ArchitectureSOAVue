package com.easygeek.entite;

import java.sql.Date;

public class Stock implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer idStock;
	private String reference;
	private Date dateStock;
	private Boolean reapprovisionnement;
	private Integer quantite;
	private Integer fournisseurId;
	

	public Stock() {
	}

	public Stock(Integer idStock) {
		this.idStock = idStock;
	}

	public Stock(Integer idStock, Date dateStock, Boolean reapprovisionnement,
			Integer quantite) {
		this.idStock = idStock;
		this.dateStock = dateStock;
		this.reapprovisionnement = reapprovisionnement;
		this.quantite = quantite;
	}
	
	public Integer getId() {
		return this.idStock;
	}

	public void setId(Integer idStock) {
		this.idStock = idStock;
	}
	
	public Integer getFournisseurId() {
		return fournisseurId;
	}

	public void setFournisseurId(Integer fournisseurId) {
		this.fournisseurId = fournisseurId;
	}

	public String getReference() {
		return this.reference;
	}

	public void setReference(String reference) {
		this.reference = reference;
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

}
