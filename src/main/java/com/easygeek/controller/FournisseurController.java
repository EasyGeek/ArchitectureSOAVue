package com.easygeek.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.easygeek.entite.Fournisseur;

@Controller
public class FournisseurController {

	public ModelAndView mav = new ModelAndView();

	@RequestMapping(value = "/fournisseurs", method = RequestMethod.GET)
	public ModelAndView getFournisseurs() {
		mav.setViewName("fournisseurs");

		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<Fournisseur[]> responseEntity = restTemplate
				.getForEntity("http://localhost:8090/fournisseurs",
						Fournisseur[].class);

		mav.addObject("command", new Fournisseur());
		mav.addObject("fournisseurList", responseEntity.getBody());

		return mav;
	}

}
