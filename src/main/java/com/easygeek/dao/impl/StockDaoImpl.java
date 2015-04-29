package com.easygeek.dao.impl;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestTemplate;

import com.easygeek.dao.StockDao;
import com.easygeek.entite.Stock;

@Repository
public class StockDaoImpl implements StockDao{

	public Stock[] getAll(){
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<Stock[]> responseEntity = restTemplate
				.getForEntity("http://localhost:8081/stock",
						Stock[].class);
		
		return responseEntity.getBody();
	}
}
