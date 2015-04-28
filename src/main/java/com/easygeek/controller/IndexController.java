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
}
