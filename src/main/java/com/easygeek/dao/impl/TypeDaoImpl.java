package com.easygeek.dao.impl;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestTemplate;

import com.easygeek.dao.TypeDao;
import com.easygeek.entite.Type;

@Repository
public class TypeDaoImpl implements TypeDao {
	RestTemplate restTemplate = new RestTemplate();

	public Type[] getAll() {

		ResponseEntity<Type[]> responseEntity = restTemplate.getForEntity(
				"http://localhost:8090/catalogue/type", Type[].class);

		return responseEntity.getBody();
	}

}
