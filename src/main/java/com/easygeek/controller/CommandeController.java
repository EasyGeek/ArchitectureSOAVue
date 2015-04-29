package com.easygeek.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.easygeek.dao.CommandeDao;
import com.easygeek.dao.DetailsCommandeDao;
import com.easygeek.entite.Commande;

@Controller
public class CommandeController {

	public ModelAndView mav = new ModelAndView();

	@Autowired
	CommandeDao commandeDao;
	DetailsCommandeDao detailsCommandeDao;
	
	@RequestMapping(value = "admin/commandes", method = RequestMethod.GET)
	public ModelAndView getCommande() {
		mav.setViewName("admin/commandes");
				
		mav.addObject("commande", new Commande());
		mav.addObject("commandeList", commandeDao.getAll());

		return mav;
	}
	
	@RequestMapping(value = "admin/commandes", method = RequestMethod.GET)
	public ModelAndView getDetailsCommande() {
		mav.setViewName("admin/commandes");
				
		mav.addObject("detailsCommande", new Commande());
		mav.addObject("detailsCommandeList", detailsCommandeDao.getAll());

		return mav;
	}
	
}
