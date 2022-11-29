package UniSaudeWeb.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

@Entity
public class Treino {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String nomeExecicio;
	
	@Enumerated(EnumType.STRING)
	private TipoTreino tipoTreino;
	
	@ManyToOne(fetch = FetchType.LAZY)
	private Aluno aluno;
	
	@ManyToOne(fetch = FetchType.LAZY)
	private Aparelhos aparelho;
	
	public Aluno getAluno() {
		return aluno;
	}

	public void setAluno(Aluno aluno) {
		this.aluno = aluno;
	}


	public long getId() {
		return id;
	}

	public Aparelhos getAparelho() {
		return aparelho;
	}

	public void setAparelho(Aparelhos aparelho) {
		this.aparelho = aparelho;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNomeExecicio() {
		return nomeExecicio;
	}

	public void setNomeExecicio(String nomeExecicio) {
		this.nomeExecicio = nomeExecicio;
	}

	public TipoTreino getTipoTreino() {
		return tipoTreino;
	}

	public void setTipoTreino(TipoTreino tipoTreino) {
		this.tipoTreino = tipoTreino;
	}
		
	
	
}
