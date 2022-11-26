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
import br.computacao.escolaWeb.dao.CursoDao;
import br.computacao.escolaWeb.model.Curso;
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
		
		AlunoDao dao = new AlunoDao();
		
		long alunoid = Long.parseLong(request.getParameter("id"));
		Aluno deletarAluno = dao.findById(Aluno.class, alunoid).get();
		
		dao.delete(deletarAluno);		
	
	response.sendRedirect("consultaAluno.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AlunoDao dao = new AlunoDao();
		
		if (request.getParameter("alunoid") == null) {		
			
			Aluno novoAluno = new Aluno();
			novoAluno.setNome(request.getParameter("nome"));
			novoAluno.setEmail(request.getParameter("email"));
			novoAluno.setNivelaluno(NivelAluno.valueOf(request.getParameter("nivelAluno").toUpperCase()));
			
			dao.save(novoAluno);
		}
		else {
			long alunoid = Long.parseLong(request.getParameter("alunoid"));
			Aluno aluno = dao.findById(Aluno.class, alunoid).get();
			
			aluno.setNome(request.getParameter("nome"));
			aluno.setEmail(request.getParameter("email"));
			aluno.setNivelaluno(NivelAluno.valueOf(request.getParameter("nivelAluno").toUpperCase()));
			
			dao.update(aluno);
			}
		
		response.sendRedirect("consultaAluno.jsp");
		
	}

}
