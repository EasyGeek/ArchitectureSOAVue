package com.easygeek.dao;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestTemplate;

import com.easygeek.entite.Fournisseur;

@Repository
public class FournisseurDao {

	public Fournisseur[] getAll(){
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<Fournisseur[]> responseEntity = restTemplate
				.getForEntity("http://localhost:8081/fournisseur",
						Fournisseur[].class);
		
		return responseEntity.getBody();
	}
	
}
