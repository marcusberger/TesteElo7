package br.com.testeElo7.agenda.models;

public class Contato {
	
	private String nome;
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	private String email;
	@Override
	public String toString() {
		return "Contato [nome=" + nome + ", email=" + email + "]";
	}
	
	

}
