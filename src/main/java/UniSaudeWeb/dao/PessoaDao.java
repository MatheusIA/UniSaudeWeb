package UniSaudeWeb.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import UniSaudeWeb.model.Pessoa;

public class PessoaDao extends Dao<Pessoa, Long>{

	public List<Long> getTreinosAluno(Long id)
	{
		List<Long> pessoas = new ArrayList<Long>();
		try {
			TypedQuery<Long> query = em.createQuery("SELECT id FROM Pessoa WHERE id = ?1", Long.class);
			query.setParameter(1, id);
			pessoas = query.getResultList();
			
		} catch (Exception e) {

			System.out.println(e.getMessage());
		}
		
		for(Long pessoaid : pessoas)
		{
			System.out.println(pessoaid + "id");			
		}
		
		return pessoas;
	}
}
