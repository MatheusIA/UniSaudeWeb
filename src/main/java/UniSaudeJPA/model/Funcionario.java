package UniSaudeJPA.model;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;

@Entity
@DiscriminatorValue("2")
public class Funcionario extends Pessoa{

	@Enumerated(EnumType.STRING)
	private FormacaoFuncionario formacao;

	public FormacaoFuncionario getFormacao() {
		return formacao;
	}

	public void setFormacao(FormacaoFuncionario formacao) {
		this.formacao = formacao;
	}
	
	
	
}
