package com.easygeek.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import com.easygeek.dao.DetailsCommandeDao;
import com.easygeek.entite.Commande;

@Controller
public class CommandeController {

	public ModelAndView mav = new ModelAndView();
	
	@Autowired
	DetailsCommandeDao detailsCommandeDao;
	
	@RequestMapping(value = "admin/commandes", method = RequestMethod.GET)
	public ModelAndView getDetailsCommande() {
		mav.setViewName("admin/commandes");
				
		mav.addObject("detailsCommande", new Commande());
		mav.addObject("detailsCommandeList", detailsCommandeDao.getAll());

		return mav;
	}
	
}
