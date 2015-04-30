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

	@RequestMapping(value = "/catalogue", method = RequestMethod.GET)
	public ModelAndView get() {
		mav.setViewName("catalogue");
		mav.addObject("composantList", composantDao.getAll());
		mav.addObject("marqueList", composantDao.getMarque());
		return mav;
	}

	@RequestMapping(value = "/catalogue/type/{id}", method = RequestMethod.GET)
	public ModelAndView getCatalogueType(@PathVariable Integer id) {
		mav.setViewName("catalogue");
		mav.addObject("composantList", composantDao.getByType(id));
		return mav;
	}
	@RequestMapping(value = "/catalogue/{id}", method = RequestMethod.GET)
	public ModelAndView getCatalogueComposant(@PathVariable Integer id) {
		mav.setViewName("catalogue");
		mav.addObject("typeList", composantDao.getType());
		mav.addObject("marqueList", composantDao.getMarque());
		mav.addObject("composantList", composantDao.getByType(id));
		return mav;
	}
	@RequestMapping(value = "/catalogue/marque/{id}", method = RequestMethod.GET)
	public ModelAndView getCatalogueMarque(@PathVariable Integer id) {
		mav.setViewName("catalogue");
		mav.addObject("composantList", composantDao.getByMarque(id));
		return mav;
	}
	
	@RequestMapping(value = "/type", method = RequestMethod.GET)
	public ModelAndView getType() {
		mav.setViewName("catalogue");
		mav.addObject("typeList", composantDao.getType());
		return mav;
	}
	
	@RequestMapping(value = "/marque", method = RequestMethod.GET)
	public ModelAndView getMarque() {
		mav.setViewName("catalogue");
		mav.addObject("marqueList", composantDao.getMarque());
		return mav;
	}
}