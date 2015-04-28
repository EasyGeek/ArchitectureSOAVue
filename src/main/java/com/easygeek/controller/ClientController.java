package com.easygeek.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.easygeek.dao.ClientDao;
import com.easygeek.entite.Client;

@Controller
public class ClientController {

	public ModelAndView mav = new ModelAndView();

	@Autowired
	ClientDao clientDao;
	
	@RequestMapping(value = "/clients", method = RequestMethod.GET)
	public ModelAndView getClients() {
		mav.setViewName("clients");
				
		mav.addObject("command", new Client());
		mav.addObject("clientList", clientDao.getAll());

		return mav;
	}
}
