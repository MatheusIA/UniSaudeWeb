package UniSaudeWeb.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import UniSaudeWeb.model.Aluno;

public class ConsultaTotalDao extends Dao<Aluno, Long>{

	public Aluno consulta(long id, String email, int idade)
	{
		String jpql = "SELECT id, email, idade FROM pessoa p where u.id = :id";
		return this.em
				.createQuery(jpql, Aluno.class)
				.setParameter("id", id)
				.getSingleResult();
		
	}
	

}
