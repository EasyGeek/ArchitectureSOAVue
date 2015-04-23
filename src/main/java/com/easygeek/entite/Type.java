package com.easygeek.entite;

public class Type implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer typeId;
	private String libelle;

	public Type() {
	}

	public Type(String libelle) {
		this.libelle = libelle;
	}

	public Integer getTypeId() {
		return this.typeId;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}

	public String getLibelle() {
		return this.libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

}
