package com.aula.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AlunoController {

	
	
	@RequestMapping(value = "/data_js1", method = RequestMethod.GET)
	public String data_js( Model model) {		
		return "data_js";
	}
	
	@RequestMapping(value = "/dados1", method = RequestMethod.GET)
	public String dados( Model model) {		
		return "dados";
	}
	
	
	
}
