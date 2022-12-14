package UniSaudeJPA.model;

import javax.persistence.Embeddable;

@Embeddable
public class Endereco {

	private String rua;
	private String numero;
	private String bairro;
	private String cidade;	
	private String cep;
}
