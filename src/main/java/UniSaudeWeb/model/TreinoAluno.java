package UniSaudeWeb.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;


public class TreinoAluno {

	@Id
	private long id;
	@ManyToOne(fetch = FetchType.EAGER)
	private Aluno aluno;
	
	@ManyToOne(fetch = FetchType.LAZY)
	private Treino treino;
}
