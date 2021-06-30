package com.aula.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ClienteController {



	@RequestMapping(value = "/cadastro_clientes", method = RequestMethod.GET)
	public String cadastro_clientes() {		
		return "cadastro_clientebarbearia";
	}

}
