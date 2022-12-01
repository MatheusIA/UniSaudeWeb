package UniSaudeWeb.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import UniSaudeWeb.model.Aluno;
import UniSaudeWeb.model.Treino;

public class TreinoDao extends Dao<Treino, Long> {

	public List<Long> getTreinos(Long id)
	{
		List<Long> treinos = new ArrayList<Long>();
		try {
			TypedQuery<Long> query = em.createQuery("SELECT id FROM Treino WHERE aluno_id = ?1", Long.class);
			query.setParameter(1, id);
			treinos = query.getResultList();
			
		} catch (Exception e) {

			System.out.println(e.getMessage());
		}
		
		for(Long treinoid : treinos)
		{
			System.out.println(treinoid + "id");			
		}
		
		return treinos;
	}
	
	public Aluno getNome(Long id)
	{
		Aluno alunoId = new Aluno();
		System.out.println(id);
		try {
			TypedQuery<Aluno> query = em.createQuery("SELECT Aluno FROM Treino", Aluno.class);
			
			//query.setParameter(1, id);
		 alunoId = query.getSingleResult();
		 System.out.println(query.getSingleResult()+"aaaaaa");
			
		} catch (Exception e) {

			System.out.println(e.getMessage());
		}
		
		
			System.out.println(alunoId + "aaaaaaaaaaaaa");			
		
		
		return alunoId;
	}
	
	
}
