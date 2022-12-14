package UniSaudeJPA.app;

import javax.persistence.EntityManager;
import Util.JpaUtil;

public class Main {

	public static void main(String[] args) {

		EntityManager em = JpaUtil.getEntityManagerFactory().createEntityManager();

	}

}
