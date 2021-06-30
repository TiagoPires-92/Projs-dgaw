package com.aula.dados;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.aula.modelos.ClienteBarbearia;

@Service

public class ClienteBarbeariaRepositorio {

	ArrayList<ClienteBarbearia> lista = new ArrayList<>();
	static int contadorId = 1;

	public Integer salvar(ClienteBarbearia cliente) {
		cliente.id = contadorId++;
		lista.add(cliente);
		return cliente.id;
	}

	public ArrayList<ClienteBarbearia> listar(){
		return lista;
	}

	public ClienteBarbearia buscar(Integer id) {
		for(ClienteBarbearia cliente: lista) {
			if(cliente.id == id) {
				return cliente;
			}
		}
		return null;
	}

	public void deletar(Integer id) {
		lista.removeIf(obj -> obj.id == id);
	}

	public void atualizar(ClienteBarbearia cliente) {
		lista.removeIf(obj -> obj.id == cliente.id);
		lista.add(cliente);
	}

}