package com.easygeek.dao.impl;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestTemplate;

import com.easygeek.dao.CommandeDao;
import com.easygeek.entite.Commande;

@Repository
public class CommandeDaoImpl implements CommandeDao {

	public Commande[] getAll(){
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<Commande[]> responseEntity = restTemplate
				.getForEntity("http://localhost:8081/commande",
						Commande[].class);
		
		return responseEntity.getBody();
	}
	
}
