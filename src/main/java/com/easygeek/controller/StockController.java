package com.easygeek.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.easygeek.dao.StockDao;
import com.easygeek.entite.Stock;

@Controller
public class StockController {
	
	public ModelAndView mav = new ModelAndView();

	@Autowired
	StockDao stockDao;
	
	@RequestMapping(value = "admin/stocks", method = RequestMethod.GET)
	public ModelAndView getStocks() {
		mav.setViewName("admin/stocks");

		mav.addObject("command", new Stock());
		mav.addObject("stockList", stockDao.getAll());

		return mav;
	}
}
