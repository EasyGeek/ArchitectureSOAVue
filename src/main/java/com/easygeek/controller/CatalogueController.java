package com.easygeek.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.easygeek.dao.ComposantDao;

@Controller
public class CatalogueController {

	public ModelAndView mav = new ModelAndView();

	@Autowired
	ComposantDao composantDao;

	@RequestMapping(value = "/catalogue/type/{id}", method = RequestMethod.GET)
	public ModelAndView getCatalogueType(@PathVariable Integer id) {
		mav.setViewName("catalogue");
		mav.addObject("catalogueList", composantDao.getByType(id));
		return mav;
	}

	@RequestMapping(value = "/catalogue", method = RequestMethod.GET)
	public ModelAndView getCatalogueType() {
		mav.setViewName("header");
		mav.addObject("TypeList", composantDao.getType());
		return mav;
	}
	
	@RequestMapping(value = "/catalogue/marque/{id}", method = RequestMethod.GET)
	public ModelAndView getCatalogueMarque(@PathVariable Integer id) {
		mav.setViewName("catalogue");
		mav.addObject("catalogueList", composantDao.getByMarque(id));
		return mav;
	}
}