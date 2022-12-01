package UniSaudeWeb.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UniSaudeWeb.dao.AlunoDao;
import UniSaudeWeb.dao.AparelhosDao;
import UniSaudeWeb.dao.TreinoDao;
import UniSaudeWeb.model.Aluno;
import UniSaudeWeb.model.Aparelhos;
import UniSaudeWeb.model.NivelAluno;
import UniSaudeWeb.model.Treino;

/**
 * Servlet implementation class ServletAparelhos
 */
@WebServlet({ "/ServletAparelhos", "/controllerAparelhos" })
public class ServletAparelhos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletAparelhos() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AparelhosDao dao = new AparelhosDao();
		
		long aparelhoid = Long.parseLong(request.getParameter("id"));
		Aparelhos deletarAparelhos = dao.findById(Aparelhos.class, aparelhoid).get();
		
		dao.delete(deletarAparelhos);		
	
	response.sendRedirect("consultaAparelho.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		AparelhosDao dao = new AparelhosDao();
		
	
		if (request.getParameter("aparelhoid") == null) {		
			
			Aparelhos novoAparelho = new Aparelhos();
			novoAparelho.setNomeAparelho(request.getParameter("nomeAparelho"));
			novoAparelho.setFuncaoAparelho(request.getParameter("funcaoAparelho"));
						
			dao.save(novoAparelho);
		}
		else {
			long aparelhoid = Long.parseLong(request.getParameter("aparelhoid"));
			Aparelhos aparelhos = dao.findById(Aparelhos.class, aparelhoid).get();
			
			aparelhos.setNomeAparelho(request.getParameter("nomeAparelho"));
			aparelhos.setFuncaoAparelho(request.getParameter("funcaoAparelho"));
			
			dao.update(aparelhos);
			}
		
		response.sendRedirect("consultaAparelho.jsp");
	}

}
