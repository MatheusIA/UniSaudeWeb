package UniSaudeWeb.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.boot.jaxb.mapping.spi.JaxbNamedStoredProcedureQuery;

import UniSaudeWeb.dao.AlunoDao;
import UniSaudeWeb.dao.MedidasCorporaisDao;
import UniSaudeWeb.dao.TreinoDao;
import UniSaudeWeb.model.Aluno;
import UniSaudeWeb.model.MedidasCorporais;
import UniSaudeWeb.model.TipoTreino;
import UniSaudeWeb.model.Treino;

/**
 * Servlet implementation class ServletMedidas
 */
@WebServlet({ "/ServletMedidas", "/controllerMedidas" })
public class ServletMedidas extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletMedidas() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MedidasCorporaisDao dao = new MedidasCorporaisDao();
				
		long medidaid = Long.parseLong(request.getParameter("id"));		
		MedidasCorporais deletarMedidas = dao.findById(MedidasCorporais.class, medidaid).get();

		dao.delete(deletarMedidas);		

	
	response.sendRedirect("consultaAluno.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MedidasCorporaisDao dao = new MedidasCorporaisDao();
		AlunoDao daoAluno = new AlunoDao();
		long alunos = Long.parseLong(request.getParameter("id"));
		Aluno aluno = daoAluno.findById(Aluno.class, alunos).get();
		
		if (request.getParameter("medidaid") == null) {		
			
			MedidasCorporais novaMedida = new MedidasCorporais();
			
			novaMedida.setAbdomen(Double.parseDouble(request.getParameter("abdomen")));
			novaMedida.setAltura(Double.parseDouble(request.getParameter("altura")));
			novaMedida.setBraco(Double.parseDouble(request.getParameter("braco")));
			novaMedida.setPerna(Double.parseDouble(request.getParameter("perna")));
			novaMedida.setPeso(Double.parseDouble(request.getParameter("peso")));
			novaMedida.setDataAvaliacao(request.getParameter("dataAvaliacao"));
			
			novaMedida.setAluno(aluno);
												
			dao.save(novaMedida);
		}
		else {
			long medidaid = Long.parseLong(request.getParameter("medidaid") );
			MedidasCorporais medidas = dao.findById(MedidasCorporais.class, medidaid).get();
			
			medidas.setAbdomen(Double.parseDouble(request.getParameter("abdomen")));
			medidas.setAltura(Double.parseDouble(request.getParameter("altura")));
			medidas.setBraco(Double.parseDouble(request.getParameter("braco")));
			medidas.setPerna(Double.parseDouble(request.getParameter("perna")));
			medidas.setPeso(Double.parseDouble(request.getParameter("peso")));
			
			
			dao.update(medidas);
			}
		
			response.sendRedirect("consultaAluno.jsp");
	}

}
