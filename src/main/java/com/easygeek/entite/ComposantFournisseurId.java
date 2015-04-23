package com.easygeek.entite;

public class ComposantFournisseurId implements java.io.Serializable {


	private static final long serialVersionUID = 1L;
	private String reference;
	private int fournisseurId;

	public ComposantFournisseurId() {
	}

	public ComposantFournisseurId(String reference, int fournisseurId) {
		this.reference = reference;
		this.fournisseurId = fournisseurId;
	}

	public String getReference() {
		return this.reference;
	}

	public void setReference(String reference) {
		this.reference = reference;
	}

	public int getFournisseurId() {
		return this.fournisseurId;
	}

	public void setFournisseurId(int fournisseurId) {
		this.fournisseurId = fournisseurId;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof ComposantFournisseurId))
			return false;
		ComposantFournisseurId castOther = (ComposantFournisseurId) other;

		return ((this.getReference() == castOther.getReference()) || (this
				.getReference() != null && castOther.getReference() != null && this
				.getReference().equals(castOther.getReference())))
				&& (this.getFournisseurId() == castOther.getFournisseurId());
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getReference() == null ? 0 : this.getReference().hashCode());
		result = 37 * result + this.getFournisseurId();
		return result;
	}

}
