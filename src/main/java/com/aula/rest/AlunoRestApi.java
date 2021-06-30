package com.aula.rest;

import java.util.List;
import java.util.ArrayList;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.aula.modelos.AlunoModeloEX;

import io.swagger.annotations.ApiOperation;

@RestController
public class AlunoRestApi {

	ArrayList<AlunoModeloEX> listaAluno = new ArrayList<>();

	public AlunoRestApi() {
		AlunoModeloEX aluno1 = new AlunoModeloEX();
		aluno1.nome = "Maria";
		aluno1.curso = "ADS";

		AlunoModeloEX aluno2 = new AlunoModeloEX();
		aluno2.nome = "Pedro";
		aluno2.curso = "ADS";

		listaAluno.add(aluno1);
		listaAluno.add(aluno2);
	}

	@ApiOperation(value = "Lista os alunos", response = List.class)
	@RequestMapping(value= "/alunos1", method=RequestMethod.GET, produces = "application/json")
	public ArrayList<AlunoModeloEX> retornaTodosAlunos(){
		return listaAluno;
	}

	@ApiOperation(value = "Busca um aluno pelo id", response = AlunoModeloEX.class)
	@RequestMapping(value= "/alunos1/{id}", method=RequestMethod.GET, produces = "application/json")
	public AlunoModeloEX retornaAluno(@PathVariable("id") Integer id) {
		try {
			return listaAluno.get(id -1);
		}catch(Exception e) {
			return new AlunoModeloEX();
		}
	}	

}
