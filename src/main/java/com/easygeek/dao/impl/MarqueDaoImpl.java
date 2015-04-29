package com.easygeek.dao.impl;

import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

import com.easygeek.entite.Marque;

public class MarqueDaoImpl {
	RestTemplate restTemplate = new RestTemplate();

	public Marque[] getAll() {

		ResponseEntity<Marque[]> responseEntity = restTemplate.getForEntity(
				"http://localhost:8090/catalogue/marque", Marque[].class);

		return responseEntity.getBody();
	}

}
