package br.com.testeElo7.agenda.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import br.com.testeElo7.agenda.daos.ContatoDAO;
import br.com.testeElo7.agenda.models.Contato;
import java.util.List;

@Controller
public class ContatosController {
	
	@Autowired
	private ContatoDAO contatoDao;
	
	@RequestMapping("/contatos/form")
	public String form(){
		return "contatos/form";
	}
	
	@RequestMapping(value="/contatos", method=RequestMethod.POST)
	public String gravar(Contato contato){
		System.out.println(contato);
		contatoDao.gravar(contato);
		return "contatos/ok";
		
	}
	
	@RequestMapping(value="/contatos", method=RequestMethod.GET)
	public ModelAndView listar(){
		List<Contato> contatos = contatoDao.listar();
		ModelAndView modelAndView = new ModelAndView("contatos/lista");
		modelAndView.addObject("contatos", contatos);
		
		return modelAndView;
	}

}
