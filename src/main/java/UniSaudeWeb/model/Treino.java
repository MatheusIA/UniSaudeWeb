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
	private String repeticao;
	private String serie;
	private String ficha;
	
	public String getFicha() {
		return ficha;
	}

	public void setFicha(String ficha) {
		this.ficha = ficha;
	}

	public String getRepeticao() {
		return repeticao;
	}

	public void setRepeticao(String repeticao) {
		this.repeticao = repeticao;
	}

	public String getSerie() {
		return serie;
	}

	public void setSerie(String serie) {
		this.serie = serie;
	}

	@Enumerated(EnumType.STRING)
	private TipoTreino tipoTreino;
	
	@ManyToOne(fetch = FetchType.LAZY)
	private Aluno aluno;
	
	
	
	public Aluno getAluno() {
		return aluno;
	}

	public void setAluno(Aluno aluno) {
		this.aluno = aluno;
	}


	public long getId() {
		return id;
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
