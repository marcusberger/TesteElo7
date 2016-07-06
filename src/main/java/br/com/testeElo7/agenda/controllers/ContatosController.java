package br.com.testeElo7.agenda.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.testeElo7.agenda.models.Contato;

@Controller
public class ContatosController {
	
	@RequestMapping("/contatos/form")
	public String form(){
		return "contatos/form";
	}
	
	@RequestMapping("/contatos")
	public String grava(Contato contato){
		System.out.println(contato);
		
		return "contatos/ok";
		
	}

}
