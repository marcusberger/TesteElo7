package br.com.testeElo7.agenda.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import br.com.testeElo7.agenda.models.Contato;

public class ContatoValidation implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		return Contato.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "nome", "field.requeried");
		ValidationUtils.rejectIfEmpty(errors, "email", "field.requeried");
		
	}
	
}
