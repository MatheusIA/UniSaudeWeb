package UniSaudeWeb.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import UniSaudeWeb.model.Aluno;
import UniSaudeWeb.model.MedidasCorporais;

public class MedidasCorporaisDao extends Dao<MedidasCorporais, Long> {

	public List<Long> getMedidasCorporais(Long id)
	{
		List<Long> medidas = new ArrayList<Long>();
		try {
			TypedQuery<Long> query = em.createQuery("SELECT id FROM MedidasCorporais WHERE aluno_id = ?1", Long.class);
			query.setParameter(1, id);
			medidas = query.getResultList();
			
		} catch (Exception e) {

			System.out.println(e.getMessage());
		}
		
		for(Long medidaid : medidas)
		{
			System.out.println(medidaid + "id");			
		}
		
		return medidas;
	}
	
}
