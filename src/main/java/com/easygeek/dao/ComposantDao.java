package com.easygeek.dao;

import com.easygeek.entite.Composant;

public interface ComposantDao {

	public Composant[] getByType(Integer id);

	public Composant[] getByMarque(Integer id);
	
	public Composant[] getAll();
	
}
