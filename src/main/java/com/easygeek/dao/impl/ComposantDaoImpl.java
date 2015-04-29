package com.easygeek.dao.impl;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestTemplate;

import com.easygeek.dao.ComposantDao;
import com.easygeek.entite.Composant;
import com.easygeek.entite.Marque;
import com.easygeek.entite.Type;

@Repository
public class ComposantDaoImpl implements ComposantDao {
	RestTemplate restTemplate = new RestTemplate();

	public Composant[] getByType(Integer id) {
		ResponseEntity<Composant[]> responseEntity = restTemplate
				.getForEntity("http://localhost:8081/catalogue/type/" + id,
						Composant[].class);

		return responseEntity.getBody();
	}
	
	public Composant[] getByMarque(Integer id) {
		ResponseEntity<Composant[]> responseEntity = restTemplate.getForEntity(
				"http://localhost:8081/catalogue/marque/" + id,
				Composant[].class);

		return responseEntity.getBody();
	}
	
	public Composant[] getAll() {
		ResponseEntity<Composant[]> responseEntity = restTemplate.getForEntity(
				"http://localhost:8081/catalogue/", Composant[].class);

		return responseEntity.getBody();
	}

	public Marque[] getMarque() {
		ResponseEntity<Marque[]> responseEntity = restTemplate.getForEntity(
				"http://localhost:8081/catalogue/marque/",
				Marque[].class);

		return responseEntity.getBody();
	}

	public Type[] getType() {
		ResponseEntity<Type[]> responseEntity = restTemplate.getForEntity(
				"http://localhost:8081/catalogue/type/",
				Type[].class);

		return responseEntity.getBody();
	}

}
