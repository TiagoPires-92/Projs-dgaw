package com.aula.negocio;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

//Fazer a referencia aos pacotes dados e modelos
import com.aula.dados.ClienteBarbeariaRepositorio;
import com.aula.modelos.ClienteBarbearia;


@Service
public class ClienteServico {

	ClienteBarbeariaRepositorio clientebarbeariaRepositorio = new ClienteBarbeariaRepositorio();
	ArrayList<String> listagemClientes = new ArrayList<String>();

	public String cadastrarCliente(ClienteBarbearia cliente) {

		if(cliente.nome.length() <= 0) {
			return "Um nome deve ser cadastrado";
		}
		if(cliente.servico.length() <= 0) {
			return "Um servico deve ser cadastrado";
		}
		if(cliente.data.length() <= 0) {
			return "Uma data deve ser cadastrado";
		}
		if(cliente.horario.length() <= 0) {
			return "Um horario deve ser cadastrado";
		}

		if(cliente.telefone.length() <= 0) {
			return "Um telefone deve ser cadastrado";
		}
		if(cliente.email.length() <= 0) {
			return "Um email deve ser cadastrado";
		}

		clientebarbeariaRepositorio.salvar(cliente);
		return "";

	}

}
