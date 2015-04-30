package com.easygeek.controller;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	
	@RequestMapping(value = "admin/clients", method = RequestMethod.GET)
	public ModelAndView getClients() {
		mav.setViewName("admin/clients");
				
		mav.addObject("command", new Client());
		mav.addObject("clientList", clientDao.getAll());

		return mav;
	}
	
	@RequestMapping(value = "/client/ajouter", method = RequestMethod.POST)
	public ModelAndView ajouterClient(
			@ModelAttribute("client") Client client) throws NoSuchAlgorithmException {
		String passord = client.getPassword();
		MessageDigest m = MessageDigest.getInstance("MD5");
		m.reset();
		m.update(passord.getBytes());
		byte[] digest = m.digest();
		BigInteger bigInt = new BigInteger(1,digest);
		String hashtext = bigInt.toString(16);
		// Now we need to zero pad it if you actually want the full 32 chars.
		while(hashtext.length() < 32 ){
		  hashtext = "0"+hashtext;
		}
		client.setPassword(hashtext);
		clientDao.sauvegarder(client);
		return new ModelAndView("redirect:/connexion");
	}
}
