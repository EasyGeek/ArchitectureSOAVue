package com.easygeek.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.easygeek.dao.FournisseurDao;
import com.easygeek.entite.Fournisseur;

@Controller
public class FournisseurController {

	public ModelAndView mav = new ModelAndView();

	@Autowired
	FournisseurDao fournisseurDao;
	
	@RequestMapping(value = "/fournisseurs", method = RequestMethod.GET)
	public ModelAndView getFournisseurs() {
		mav.setViewName("fournisseurs");

		mav.addObject("fournisseur", new Fournisseur());
		mav.addObject("fournisseurList", fournisseurDao.getAll());

		return mav;
	}
	
	@RequestMapping(value = "/fournisseurs/ajouter", method = RequestMethod.POST)
	public ModelAndView ajouterFournisseurs(@ModelAttribute("fournisseur") Fournisseur fournisseur) {
		fournisseurDao.sauvegarder(fournisseur);
		getFournisseurs();
		return mav;
	}
	
	@RequestMapping(value = "/fournisseurs/modifier", method = RequestMethod.POST)
	public ModelAndView modifierFournisseurs(@ModelAttribute("fournisseur") Fournisseur fournisseur) {
		fournisseurDao.modifier(fournisseur);
		getFournisseurs();
		return mav;
	}
	
	@RequestMapping(value = "/fournisseurs/supprimer/{id}", method = RequestMethod.POST)
	public ModelAndView supprimerFournisseurs(@PathVariable Integer id) {
		fournisseurDao.supprimer(id);
		getFournisseurs();
		return mav;
	}

}