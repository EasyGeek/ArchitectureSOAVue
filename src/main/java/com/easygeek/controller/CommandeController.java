package com.easygeek.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CommandeController {

	public ModelAndView mav = new ModelAndView();

//	@Autowired
//	CommandeDao commandeDao;
//	
//	@Autowired
//	DetailsCommandeDao detailsCommandeDao;
	
//	@RequestMapping(value = "admin/commandes", method = RequestMethod.GET)
//	public ModelAndView getCommande() {
//		mav.setViewName("admin/commandes");
//				
//		mav.addObject("commande", new Commande());
//		mav.addObject("commandeList", commandeDao.getAll());
//
//		return mav;
//	}
//	
//	@RequestMapping(value = "admin/commandes", method = RequestMethod.GET)
//	public ModelAndView getDetailsCommande() {
//		mav.setViewName("admin/commandes");
//				
//		mav.addObject("detailsCommande", new Commande());
//		mav.addObject("detailsCommandeList", detailsCommandeDao.getAll());
//
//		return mav;
//	}
	
}
