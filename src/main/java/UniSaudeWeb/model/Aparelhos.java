package UniSaudeWeb.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

@Entity
public class Aparelhos {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String nomeAparelho;
	private String funcaoAparelho;
	
	

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


		
}
