package com.easygeek.dao.impl;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestTemplate;

import com.easygeek.dao.ClientDao;
import com.easygeek.entite.Client;

@Repository
public class ClientDaoImpl implements ClientDao {
	
	RestTemplate restTemplate = new RestTemplate();

	public Client[] getAll(){
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<Client[]> responseEntity = restTemplate
				.getForEntity("http://localhost:8081/client",
						Client[].class);
		
		return responseEntity.getBody();
	}
	
	public void sauvegarder(Client client) {
		restTemplate.postForLocation("http://localhost:8090/client/ajouter", client, Client.class);
	}
}
