package com.easygeek.entite;

public class DetailsCommandeId implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private String reference;
	private int commandeId;

	public DetailsCommandeId() {
	}

	public DetailsCommandeId(String reference, int commandeId) {
		this.reference = reference;
		this.commandeId = commandeId;
	}

	public String getReference() {
		return this.reference;
	}

	public void setReference(String reference) {
		this.reference = reference;
	}

	public int getCommandeId() {
		return this.commandeId;
	}

	public void setCommandeId(int commandeId) {
		this.commandeId = commandeId;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof DetailsCommandeId))
			return false;
		DetailsCommandeId castOther = (DetailsCommandeId) other;

		return ((this.getReference() == castOther.getReference()) || (this
				.getReference() != null && castOther.getReference() != null && this
				.getReference().equals(castOther.getReference())))
				&& (this.getCommandeId() == castOther.getCommandeId());
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getReference() == null ? 0 : this.getReference().hashCode());
		result = 37 * result + this.getCommandeId();
		return result;
	}

}
