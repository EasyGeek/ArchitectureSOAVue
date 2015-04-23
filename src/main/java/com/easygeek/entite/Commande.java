package com.easygeek.entite;

import java.sql.Date;


public class Commande implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer commandeId;
	private Client client;
	private Date dateCommande;
	private Double prixHt;
	private Integer typeLivraisonId;

	public Commande() {
	}

	public Commande(Client client, Date dateCommande, Double prixHt,
			Integer typeLivraisonId) {
		this.client = client;
		this.dateCommande = dateCommande;
		this.prixHt = prixHt;
		this.typeLivraisonId = typeLivraisonId;
	}

	public Integer getCommandeId() {
		return this.commandeId;
	}

	public void setCommandeId(Integer commandeId) {
		this.commandeId = commandeId;
	}

	public Client getClient() {
		return this.client;
	}
	
	public void setClient(Client client) {
		this.client = client;
	}

	public Date getDateCommande() {
		return this.dateCommande;
	}

	public void setDateCommande(Date dateCommande) {
		this.dateCommande = dateCommande;
	}

	public Double getPrixHt() {
		return this.prixHt;
	}

	public void setPrixHt(Double prixHt) {
		this.prixHt = prixHt;
	}

	public Integer getTypeLivraisonId() {
		return this.typeLivraisonId;
	}

	public void setTypeLivraisonId(Integer typeLivraisonId) {
		this.typeLivraisonId = typeLivraisonId;
	}

}
