package br.com.testeElo7.agenda.models;

public class Contato {
	
	private String titulo;
	private String descricao;
	private int paginas;
	
	
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public int getPaginas() {
		return paginas;
	}
	public void setPaginas(int paginas) {
		this.paginas = paginas;
	}
	
	@Override
	public String toString() {
		return "Contato [titulo=" + titulo + ", descricao=" + descricao + ", paginas=" + paginas + "]";
	}
	
	

}
