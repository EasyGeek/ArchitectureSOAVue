package com.easygeek.dao.impl;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestTemplate;

import com.easygeek.dao.FournisseurDao;
import com.easygeek.entite.Fournisseur;

@Repository
public class FournisseurDaoImpl implements FournisseurDao {

	RestTemplate restTemplate = new RestTemplate();
	
	public Fournisseur[] getAll(){
		ResponseEntity<Fournisseur[]> responseEntity = restTemplate
				.getForEntity("http://localhost:8090/fournisseur",
						Fournisseur[].class);
		
		return responseEntity.getBody();
	}

	public void sauvegarder(Fournisseur fournisseur) {
		restTemplate.postForLocation("http://localhost:8090/fournisseur/ajouter", fournisseur, Fournisseur.class);
	}

	public void modifier(Fournisseur fournisseur) {
		restTemplate.put("http://localhost:8090/fournisseur/modifier", fournisseur, Fournisseur.class);
	}

	public void supprimer(Integer id) {
		restTemplate.delete("http://localhost:8090/fournisseur/supprimer/" + id);
	}
	
	public ResponseEntity<Fournisseur> get(Integer id) {
		
		return restTemplate.getForEntity("http://localhost:8090/fournisseur", Fournisseur.class);
	}
	
}

