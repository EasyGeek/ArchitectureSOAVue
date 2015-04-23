package com.easygeek.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class ClientController {

	public ModelAndView mav = new ModelAndView();

	@RequestMapping(value = "/clients", method = RequestMethod.GET)
	public <Client> ModelAndView getClients() {
		mav.setViewName("clients");

		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<Client[]> responseEntity = restTemplate
				.getForEntity("http://localhost:8090/client",
						Client[].class);

		mav.addObject("command", new Client());
		mav.addObject("clientList", responseEntity.getBody());

		return mav;
	}
}
