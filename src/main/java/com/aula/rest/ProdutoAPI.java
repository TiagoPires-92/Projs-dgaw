package com.aula.rest;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.aula.modelos.ProdutoModelo;
import com.aula.negocio.ProdutoServico;

import io.swagger.annotations.ApiOperation;

@RestController
public class ProdutoAPI {

	// injecao de dependencia.
	@Autowired
	ProdutoServico servico;
	
	@ApiOperation(value = "Salva um usuario no sistema", response = ResponseEntity.class)
	@RequestMapping(value= "/produzidos", method=RequestMethod.POST, produces = "application/json")
	public ResponseEntity<Integer> salvar(@RequestBody ProdutoModelo produto){		
		return new ResponseEntity<>(servico.salvar(produto),HttpStatus.OK);		
	}
	
	@ApiOperation(value = "Lista os Usuarios", response = ArrayList.class)
	@RequestMapping(value= "/produzidos", method=RequestMethod.GET, produces = "application/json")
	public ArrayList<ProdutoModelo> listar(){
		return servico.listar();
	}
	
	@ApiOperation(value = "Busca um usuario pelo id", response = ResponseEntity.class)
	@RequestMapping(value= "/produzidos/{id}", method=RequestMethod.GET, produces = "application/json")
	public ResponseEntity<ProdutoModelo> buscar(@PathVariable("id") Integer id){
		return new ResponseEntity<>(servico.buscar(id),HttpStatus.OK);
	}
	
	@ApiOperation(value = "Deleta o usuario pelo id", response = ResponseEntity.class)
	@RequestMapping(value= "/produzidos/{id}", method=RequestMethod.DELETE, produces = "application/json")
	public ResponseEntity<Void> deletar(@PathVariable("id") Integer id){
		servico.deletar(id);
		return new ResponseEntity<>(HttpStatus.OK);
	}
	
	@ApiOperation(value = "Atualizar o usuario pelo id", response = ResponseEntity.class)
	@RequestMapping(value= "/produzidos", method=RequestMethod.PUT, produces = "application/json")
	public ResponseEntity<Void> atualizar(@RequestBody ProdutoModelo produto){		
		servico.atualizar(produto);
		return new ResponseEntity<>(HttpStatus.OK);		
	}
	
}