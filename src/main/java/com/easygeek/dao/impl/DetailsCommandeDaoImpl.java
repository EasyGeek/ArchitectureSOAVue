package com.easygeek.dao.impl;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestTemplate;

import com.easygeek.entite.DetailsCommande;

@Repository
public class DetailsCommandeDaoImpl {

	public DetailsCommande[] getAll(){
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<DetailsCommande[]> responseEntity = restTemplate
				.getForEntity("http://localhost:8090/detailscommande",
						DetailsCommande[].class);
		
		return responseEntity.getBody();
	}
	
}
