package UniSaudeJPA.model;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.DiscriminatorColumn;
import javax.persistence.DiscriminatorType;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

import net.bytebuddy.dynamic.loading.ClassReloadingStrategy.Strategy;

@Entity
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name = "Tipo_Pessoa", discriminatorType = DiscriminatorType.INTEGER)
public class Pessoa {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String nome;
	
	@Column(unique = true)
	private String email;
	private int idade;	
	
	@Embedded
	@AttributeOverrides({
		@AttributeOverride(name = "rua", column = @Column(name = "endereço_rua")),
		@AttributeOverride(name = "numero", column = @Column(name = "endereço_numero")),
		@AttributeOverride(name = "bairro", column = @Column(name = "endereço_bairro")),
		@AttributeOverride(name = "cidade", column = @Column(name = "endereço_cidade")),
		@AttributeOverride(name = "cep", column = @Column(name = "endereço_cep"))		
		})
	private Endereco endereco;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getIdade() {
		return idade;
	}

	public void setIdade(int idade) {
		this.idade = idade;
	}

	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}
	
	
	

}
