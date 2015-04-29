package com.easygeek.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.easygeek.dao.ComposantDao;

@Controller
public class IndexController {

	public ModelAndView mav = new ModelAndView();

	@Autowired
	ComposantDao composantDao;
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView index() {
		mav.setViewName("index");
		mav.addObject("typeList", composantDao.getType());
		return mav;
	}
	
	@RequestMapping(value = "/categorie/{id}", method = RequestMethod.GET)
	public ModelAndView categorie(@PathVariable Integer id) {
		mav.setViewName("categorie");
		mav.addObject("composantList", composantDao.getByType(id));

		return mav;
	}
	@RequestMapping(value = "/article", method = RequestMethod.GET)
	public ModelAndView article() {
		mav.setViewName("article");

		return mav;
	}
	@RequestMapping(value = "/conditions", method = RequestMethod.GET)
	public ModelAndView conditions() {
		mav.setViewName("conditions");

		return mav;
	}
	@RequestMapping(value = "/connexion", method = RequestMethod.GET)
	public ModelAndView connexion() {
		mav.setViewName("connexion");

		return mav;
	}
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public ModelAndView contact() {
		mav.setViewName("contact");

		return mav;
	}
	@RequestMapping(value = "/inscription", method = RequestMethod.GET)
	public ModelAndView inscription() {
		mav.setViewName("inscription");

		return mav;
	}
	@RequestMapping(value = "/nous", method = RequestMethod.GET)
	public ModelAndView nous() {
		mav.setViewName("nous");

		return mav;
	}
	@RequestMapping(value = "/panier", method = RequestMethod.GET)
	public ModelAndView panier() {
		mav.setViewName("panier");

		return mav;
	}
}
