package UniSaudeJPA.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Aparelhos {

	@Id
	private long id;
	private String nomeAparelho;
	private String funcaoAparelho;
	
	@ManyToMany(mappedBy = "treinosAparelhos")
	Set<Treino> treinoAparelho;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNomeAparelho() {
		return nomeAparelho;
	}

	public void setNomeAparelho(String nomeAparelho) {
		this.nomeAparelho = nomeAparelho;
	}

	public String getFuncaoAparelho() {
		return funcaoAparelho;
	}

	public void setFuncaoAparelho(String funcaoAparelho) {
		this.funcaoAparelho = funcaoAparelho;
	}

	public Set<Treino> getTreinoAparelho() {
		return treinoAparelho;
	}

	public void setTreinoAparelho(Set<Treino> treinoAparelho) {
		this.treinoAparelho = treinoAparelho;
	}
	
	
	
}
