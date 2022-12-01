package UniSaudeWeb.model;

import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
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
import javax.persistence.OneToMany;

@Entity
public class Treino {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String nomeExecicio;
	private String repeticao;
	private String serie;
	private String ficha;
	
	@Enumerated(EnumType.STRING)
	private TipoTreino tipoTreino;
	
	@ManyToOne
	Aluno aluno;

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

	public String getFicha() {
		return ficha;
	}

	public void setFicha(String ficha) {
		this.ficha = ficha;
	}

	public TipoTreino getTipoTreino() {
		return tipoTreino;
	}

	public void setTipoTreino(TipoTreino tipoTreino) {
		this.tipoTreino = tipoTreino;
	}

	public Aluno getAluno() {
		return aluno;
	}

	public void setAluno(Aluno aluno) {
		this.aluno = aluno;
	}
	
	
		
	
	
}
