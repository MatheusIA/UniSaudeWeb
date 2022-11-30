package UniSaudeWeb.model;
import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class MedidasCorporais{

		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private long id;
		
		@ManyToOne(fetch = FetchType.LAZY)
		private Aluno aluno;
		
		private double Peso;
		private double Braco;
		private double Perna;
		private double Abdomen;
		private double IMC;
		private double Altura;
		private String DataAvaliacao;
	
		
		public long getId() {
			return id;
		}
		public void setId(long id) {
			this.id = id;
		}
		public Aluno getAluno() {
			return aluno;
		}
		public void setAluno(Aluno aluno) {
			this.aluno = aluno;
		}
		public double getPeso() {
			return Peso;
		}
		public void setPeso(double peso) {
			Peso = peso;
		}
		public double getBraco() {
			return Braco;
		}
		public void setBraco(double braco) {
			Braco = braco;
		}
		public double getPerna() {
			return Perna;
		}
		public void setPerna(double perna) {
			Perna = perna;
		}
		public double getAbdomen() {
			return Abdomen;
		}
		public void setAbdomen(double abdomen) {
			Abdomen = abdomen;
		}
		public double getIMC() {
			return IMC;
		}
		public void setIMC(double iMC) {
			IMC = iMC;
		}
		public double getAltura() {
			return Altura;
		}
		public void setAltura(double altura) {
			Altura = altura;
		}
		public String getDataAvaliacao() {
			return DataAvaliacao;
		}
		public void setDataAvaliacao(String dataAvaliacao) {
			DataAvaliacao = dataAvaliacao;
		}
		
		
		
}
