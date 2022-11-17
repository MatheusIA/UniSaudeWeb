package UniSaudeWeb.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UniSaudeWeb.dao.AlunoDao;
import UniSaudeWeb.model.Aluno;
import UniSaudeWeb.model.NivelAluno;
import UniSaudeWeb.*;


/**
 * Servlet implementation class ServletAluno
 */
@WebServlet({ "/ServletAluno", "/controllerAluno" })
public class ServletAluno extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletAluno() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AlunoDao dao = new AlunoDao();
		
		if (request.getParameter("idAluno") == null) {		
			
			Aluno novoAluno = new Aluno();
			novoAluno.setNome(request.getParameter("nome"));
			novoAluno.setEmail(request.getParameter("email"));
			novoAluno.setNivelaluno(NivelAluno.valueOf(request.getParameter("nivelAluno").toUpperCase()));
			
			dao.save(novoAluno);
		}
		else {
			long alunoid = Long.parseLong(request.getParameter("idAluno"));
			Aluno aluno = dao.findById(Aluno.class, alunoid).get();
			
			aluno.setNome(request.getParameter("nome"));
			aluno.setEmail(request.getParameter("email"));
			aluno.setNivelaluno(NivelAluno.valueOf(request.getParameter("nivelALuno").toUpperCase()));
			
			dao.update(aluno);
			}
		
		response.sendRedirect("consultaAluno.jsp");
		
	}

}
