package br.com.testeElo7.agenda.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.testeElo7.agenda.daos.ContatoDAO;
import br.com.testeElo7.agenda.models.Contato;

@Controller
public class ContatosController {
	
	@Autowired
	private ContatoDAO contatoDao;
	
	@RequestMapping("/contatos/form")
	public String form(){
		return "contatos/form";
	}
	
	@RequestMapping("/contatos")
	public String gravar(Contato contato){
		System.out.println(contato);
		contatoDao.gravar(contato);
		return "contatos/ok";
		
	}

}
