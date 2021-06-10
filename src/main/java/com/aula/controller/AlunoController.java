package com.aula.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AlunoController {

	
	
	@RequestMapping(value = "/data_js", method = RequestMethod.GET)
	public String data_js( Model model) {		
		return "data_js";
	}
	
	@RequestMapping(value = "/dados", method = RequestMethod.GET)
	public String dados( Model model) {		
		return "dados";
	}
	
	
	
}
