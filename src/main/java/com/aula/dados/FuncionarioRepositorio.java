package com.aula.dados;

import java.util.ArrayList;

import com.aula.modelos.FuncionarioModelo;

public class FuncionarioRepositorio {

	ArrayList<FuncionarioModelo> listaFuncionario = new ArrayList<FuncionarioModelo>();

	public void salvar(FuncionarioModelo funcionario ) {
		listaFuncionario.add(funcionario);
	}
}