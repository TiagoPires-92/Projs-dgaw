package com.aula.negocio;

import java.util.ArrayList;

//Fazer a referencia aos pacotes dados e modelos
import com.aula.dados.FuncionarioRepositorio;
import com.aula.modelos.FuncionarioModelo;


public class FuncionarioServico {

	FuncionarioRepositorio funcionarioRepositorio = new FuncionarioRepositorio();
	ArrayList<String> listagemFuncionarios = new ArrayList<String>();

	public String cadastrarFuncionario(FuncionarioModelo funcionario) {

		if(funcionario.nome.length() <= 0) {
			return "Um nome deve ser cadastrado";
		}

		float salarioNumerico = Float.parseFloat(funcionario.salario);

		if(salarioNumerico <= 0 || salarioNumerico > 1000) {
			return "Salario invalido, tem que ser entre 1 a 1000";
		}

		if(funcionario.setor.length() <= 0) {
			return "Um setor deve ser cadastrado";
		}
		
		funcionarioRepositorio.salvar(funcionario);
		return "";

	}

}
