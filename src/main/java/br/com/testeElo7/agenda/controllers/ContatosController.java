package br.com.testeElo7.agenda.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.testeElo7.agenda.daos.ContatoDAO;
import br.com.testeElo7.agenda.infra.FileSaver;
import br.com.testeElo7.agenda.models.Contato;
import br.com.testeElo7.agenda.validation.ContatoValidation;

import java.util.List;
import javax.validation.Valid;

@Controller
@RequestMapping("/contatos")
public class ContatosController {
	
	@Autowired
	private FileSaver fileSaver;
	
	@Autowired
	private ContatoDAO contatoDao;
	
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		binder.addValidators(new ContatoValidation());
	}
	
	@RequestMapping("form")
	public  ModelAndView form(Contato contato){
		ModelAndView modelAndView = new ModelAndView("contatos/form");
		
		return modelAndView;
	}

	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView gravar(MultipartFile foto, @Valid Contato contato, BindingResult result, RedirectAttributes redirectAttributes){
		
		if (result.hasErrors()){
			return form(contato);
		}
		
		String path = fileSaver.write("fotos", foto);
		contato.setFotoPath(path);
		
		contatoDao.gravar(contato);
		redirectAttributes.addFlashAttribute("message", "Contato cadastrado com sucesso!!");
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
