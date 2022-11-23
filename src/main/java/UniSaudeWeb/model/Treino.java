package UniSaudeWeb.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

@Entity
public class Treino {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long idTreino;
	private String nomeExecicio;
	
	@Enumerated(EnumType.STRING)
	private TipoTreino tipoTreino;
	
	@ManyToMany(mappedBy = "treinoAluno")
	Set<Aluno> alunosTreinos;
	
	@ManyToMany
	@JoinTable(
			name = "Treino_Aparelho",
			joinColumns = @JoinColumn(name = "idTreino"),
			inverseJoinColumns = @JoinColumn(name = "idAparelho")			
			)
	Set<Aparelhos> treinosAparelhos;

	public long getIdTreino() {
		return idTreino;
	}

	public void setIdTreino(long idTreino) {
		this.idTreino = idTreino;
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

	public Set<Aluno> getAlunosTreinos() {
		return alunosTreinos;
	}

	public void setAlunosTreinos(Set<Aluno> alunosTreinos) {
		this.alunosTreinos = alunosTreinos;
	}

	public Set<Aparelhos> getTreinosAparelhos() {
		return treinosAparelhos;
	}

	public void setTreinosAparelhos(Set<Aparelhos> treinosAparelhos) {
		this.treinosAparelhos = treinosAparelhos;
	}
		
	
	
}
