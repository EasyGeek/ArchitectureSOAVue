package com.easygeek.dao;

import com.easygeek.entite.Composant;
import com.easygeek.entite.Marque;
import com.easygeek.entite.Type;

public interface ComposantDao {

	public Composant[] getByType(Integer id);

	public Composant[] getByMarque(Integer id);
	
	public Composant[] getAll();
	
	public Marque[] getMarque();
	
	public Type[] getType();
	
	public Composant[] getComposant(Integer id);
}
