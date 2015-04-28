package com.easygeek.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {

	public ModelAndView mav = new ModelAndView();

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView index() {
		mav.setViewName("index");

		return mav;
	}
	
	@RequestMapping(value = "/categorie", method = RequestMethod.GET)
	public ModelAndView categorie() {
		mav.setViewName("function/categorie");

		return mav;
	}
	@RequestMapping(value = "/article", method = RequestMethod.GET)
	public ModelAndView article() {
		mav.setViewName("function/article");

		return mav;
	}
	@RequestMapping(value = "/conditions", method = RequestMethod.GET)
	public ModelAndView conditions() {
		mav.setViewName("function/conditions");

		return mav;
	}
	@RequestMapping(value = "/connexion", method = RequestMethod.GET)
	public ModelAndView connexion() {
		mav.setViewName("function/connexion");

		return mav;
	}
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public ModelAndView contact() {
		mav.setViewName("function/contact");

		return mav;
	}
	@RequestMapping(value = "/inscription", method = RequestMethod.GET)
	public ModelAndView inscription() {
		mav.setViewName("function/inscription");

		return mav;
	}
	@RequestMapping(value = "/nous", method = RequestMethod.GET)
	public ModelAndView nous() {
		mav.setViewName("function/nous");

		return mav;
	}
	@RequestMapping(value = "/panier", method = RequestMethod.GET)
	public ModelAndView panier() {
		mav.setViewName("function/panier");

		return mav;
	}
}
