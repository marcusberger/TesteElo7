package br.com.testeElo7.agenda.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.testeElo7.agenda.models.Contato;

@Repository
@Transactional
public class ContatoDAO {
	
	@PersistenceContext
	private EntityManager manager;
	
	public void gravar(Contato contato){
		manager.persist(contato);
		
	}

	public List<Contato> listar() {
		return manager.createQuery("select p from Contato p", Contato.class)
				.getResultList();
	}

	public Contato find(Integer id) {
		return manager.find(Contato.class, id);
	}

}
