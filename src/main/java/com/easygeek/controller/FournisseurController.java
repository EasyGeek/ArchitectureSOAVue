package com.easygeek.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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

		mav.addObject("command", new Fournisseur());
		mav.addObject("fournisseurList", fournisseurDao.getAll());

		return mav;
	}
	
}