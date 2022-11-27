package UniSaudeWeb.model;
import java.util.List;
import java.util.Set;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

@Entity
@DiscriminatorValue("1")
public class Aluno extends Pessoa{
	
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idAluno;
	@Column(length = 10)
	private String matricula;
	
	@Enumerated(EnumType.STRING)
	private NivelAluno nivelaluno;
	
	@ManyToMany
	@JoinTable(
			name = "Treino_Aluno",
			joinColumns = @JoinColumn(name = "idAluno"),
			inverseJoinColumns = @JoinColumn(name = "idTreino")
			)
	Set<Treino> treinoAluno;

	public int getIdAluno() {
		return idAluno;
	}

	public void setIdAluno(int idAluno) {
		this.idAluno = idAluno;
	}

	public String getMatricula() {
		return matricula;
	}

	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}

	public NivelAluno getNivelaluno() {
		return nivelaluno;
	}

	public void setNivelaluno(NivelAluno nivelaluno) {
		this.nivelaluno = nivelaluno;
	}

	public Set<Treino> getTreinoAluno() {
		return treinoAluno;
	}

	public void setTreinoAluno(Set<Treino> treinoAluno) {
		this.treinoAluno = treinoAluno;
	}
	
	
	}
