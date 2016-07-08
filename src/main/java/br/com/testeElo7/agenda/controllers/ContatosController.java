package br.com.testeElo7.agenda.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.testeElo7.agenda.daos.ContatoDAO;
import br.com.testeElo7.agenda.models.Contato;
import java.util.List;


@Controller
@RequestMapping("contatos")
public class ContatosController {
	
	@Autowired
	private ContatoDAO contatoDao;
	
	@RequestMapping("/form")
	public String form(){
		return "contatos/form";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView gravar(Contato contato, RedirectAttributes redirectAttributes){
		System.out.println(contato);
		contatoDao.gravar(contato);
		
		redirectAttributes.addFlashAttribute("sucesso", "Contato cadastrado com sucesso!!");
		
		return new ModelAndView("redirect:contatos");
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView listar(){
		List<Contato> contatos = contatoDao.listar();
		ModelAndView modelAndView = new ModelAndView("contatos/lista");
		modelAndView.addObject("contatos", contatos);
		
		return modelAndView;
	}

}
