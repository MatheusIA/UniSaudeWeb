package UniSaudeJPA.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;


public class TreinoAparelho {
	
	@Id
	private long id;
	
	@ManyToOne(fetch = FetchType.LAZY)
	private Treino treino;
	
	@ManyToOne(fetch = FetchType.LAZY)
	private Aparelhos aparelhos;

}
