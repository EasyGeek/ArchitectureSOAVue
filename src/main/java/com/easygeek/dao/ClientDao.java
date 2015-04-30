package com.easygeek.dao;

import com.easygeek.entite.Client;

public interface ClientDao {

	public Client[] getAll();
	
	public void sauvegarder(Client client);
	
}
