package com.aula.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aula.modelo.FuncionarioModelo;
import com.aula.negocio.FuncionarioServico;



@Controller
public class FuncionarioController {

	@RequestMapping(value = "/prepara_cadastro_funcionario", method = RequestMethod.GET)
	public String prepara_cadastro_funcionario() {		
		return "cadastro_funcionarios";
	}

	@RequestMapping(value = "/cadastro_funcionario", method = RequestMethod.POST)
	public String cadastraFuncionario
	(@RequestParam(name = "nome") String nome,
			@RequestParam(name = "salario") String salario,
			@RequestParam(name = "setor") String setor,
			Model model) {		

		FuncionarioServico funcionarioServico = new FuncionarioServico();

		FuncionarioModelo funcionario = new FuncionarioModelo();

		funcionario.nome = nome;
		funcionario.salario = salario;
		funcionario.setor = setor;

		String retornoServico = funcionarioServico.cadastrarFuncionario(funcionario);

		if(retornoServico.equals("")) { // retorno vazio = SUCESSO.
			model.addAttribute("MENSAGEM", "Funcionario cadastrado com sucesso");
			return "resultado_cadastro_funcionario";
		}else {
			model.addAttribute("MENSAGEM", retornoServico);			
			// se retornou alguma coisa=  ERRO
			return "resultado_cadastro_funcionario";
		}
	}
}