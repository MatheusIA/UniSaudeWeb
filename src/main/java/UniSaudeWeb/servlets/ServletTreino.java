package UniSaudeWeb.servlets;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UniSaudeWeb.dao.AparelhosDao;
import UniSaudeWeb.dao.TreinoDao;
import UniSaudeWeb.model.Aparelhos;
import UniSaudeWeb.model.NivelAluno;
import UniSaudeWeb.model.TipoTreino;
import UniSaudeWeb.model.Treino;
import br.computacao.escolaWeb.dao.CursoDao;
import br.computacao.escolaWeb.model.Curso;

/**
 * Servlet implementation class ServletTreino
 */
@WebServlet({ "/ServletTreino", "/controllerTreino" })
public class ServletTreino extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletTreino() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		TreinoDao dao = new TreinoDao();
		
		long treinoid = Long.parseLong(request.getParameter("idTreino"));
		Treino deletarTreino = dao.findById(Treino.class, treinoid).get();
		
		dao.delete(deletarTreino);		
	
	response.sendRedirect("consultaTreino.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		TreinoDao dao = new TreinoDao();
		
		if (request.getParameter("treinoid") == null) {		
			
			Treino novoTreino = new Treino();
			novoTreino.setNomeExecicio(request.getParameter("nomeExercicio"));
			novoTreino.setTipoTreino(TipoTreino.valueOf(request.getParameter("tipoTreino").toUpperCase()));
						
			dao.save(novoTreino);
		}
		else {
			long treinoid = Long.parseLong(request.getParameter("treinoid"));
			Treino treinos = dao.findById(Treino.class, treinoid).get();
			
			treinos.setNomeExecicio(request.getParameter("nomeExercicio"));
			treinos.setTipoTreino(TipoTreino.valueOf(request.getParameter("tipoTreino").toUpperCase()));
			
			dao.update(treinos);
			}
		
		response.sendRedirect("consultaTreino.jsp");
	}

}
