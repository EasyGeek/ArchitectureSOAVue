package com.easygeek.dao;

import com.easygeek.entite.Fournisseur;

public interface FournisseurDao {

	public Fournisseur[] getAll();
		
	public void sauvegarder(Fournisseur fournisseur);
	
	public void modifier(Fournisseur fournisseur);
	
	public void supprimer(Integer id);
	
	public Fournisseur get(Integer id);
	
}