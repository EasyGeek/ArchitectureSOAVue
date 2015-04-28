package com.easygeek.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.easygeek.dao.FournisseurDao;
import com.easygeek.entite.Fournisseur;

@Controller
public class CatalogueController {

	public ModelAndView mav = new ModelAndView();

	@Autowired
	CatalogueDao catalogueDao;
	
	@RequestMapping(value = "/catalogue", method = RequestMethod.GET)
	public ModelAndView getFournisseurs() {
		mav.setViewName("catalogue");

		mav.addObject("command", new Catalogue());
		mav.addObject("catalogueList", catalogueDao.getAll());

		return mav;
	}

}