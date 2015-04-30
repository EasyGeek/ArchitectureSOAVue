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
				.getForEntity("http://localhost:8081/fournisseur",
						Fournisseur[].class);
		
		return responseEntity.getBody();
	}
	
	

	public void sauvegarder(Fournisseur fournisseur) {
		restTemplate.postForLocation("http://localhost:8081/fournisseur/ajouter", fournisseur, Fournisseur.class);
	}

	public void modifier(Fournisseur fournisseur) {
		restTemplate.postForLocation("http://localhost:8081/fournisseur/modifier", fournisseur, Fournisseur.class);
	}

	public void supprimer(Integer id) {
		restTemplate.delete("http://localhost:8081/fournisseur/supprimer/" + id);
	}
	
	public Fournisseur get(Integer id) {
		  ResponseEntity<Fournisseur> fournisseur = restTemplate.getForEntity("http://localhost:8081/fournisseur/" + id, Fournisseur.class);
		  return fournisseur.getBody();
	}
}

