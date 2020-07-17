package net.m2m.onlineshopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/*
 * Help Controller: handle various URL mapping. 
 * */
@Controller
public class PageController {

	@RequestMapping(value = {"/", "/index", "/home"})
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("greeting","Welcome To Our Page");
		return mv;
	}
	
	
}
