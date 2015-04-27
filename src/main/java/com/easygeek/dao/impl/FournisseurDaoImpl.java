package com.easygeek.dao.impl;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestTemplate;

import com.easygeek.dao.FournisseurDao;
import com.easygeek.entite.Fournisseur;

@Repository
public class FournisseurDaoImpl implements FournisseurDao {

	public Fournisseur[] getAll(){
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<Fournisseur[]> responseEntity = restTemplate
				.getForEntity("http://localhost:8090/fournisseur",
						Fournisseur[].class);
		
		return responseEntity.getBody();
	}
	
}
