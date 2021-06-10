package com.aula.negocio;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.aula.modelos.ProdutoModelo;

@Service
public class ProdutoServico {

	ArrayList<ProdutoModelo> lista = new ArrayList<>();
	static int contadorId = 1;
	
	public Integer salvar(ProdutoModelo produto) {
		produto.id = contadorId++;
		lista.add(produto);
		return produto.id;
	}
	
	public ArrayList<ProdutoModelo> listar(){
		return lista;
	}
	
	public ProdutoModelo buscar(Integer id) {
		for(ProdutoModelo produto: lista) {
			if(produto.id == id) {
				return produto;
			}
		}
		return null;
	}
	
	public void deletar(Integer id) {
		lista.removeIf(obj -> obj.id == id);
	}
	
	public void atualizar(ProdutoModelo produto) {
		lista.removeIf(obj -> obj.id == produto.id);
		lista.add(produto);
	}
		
}
