package UniSaudeWeb.servlets;

import java.io.IOException;
import java.util.Iterator;

import javax.persistence.AttributeOverride;
import javax.persistence.Embeddable;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.taglibs.standard.tag.el.fmt.RequestEncodingTag;

import UniSaudeWeb.dao.AlunoDao;
import UniSaudeWeb.dao.Dao;
import UniSaudeWeb.dao.MedidasCorporaisDao;
import UniSaudeWeb.dao.PessoaDao;
import UniSaudeWeb.model.Aluno;
import UniSaudeWeb.model.Endereco;
import UniSaudeWeb.model.MedidasCorporais;
import UniSaudeWeb.model.NivelAluno;
import UniSaudeWeb.model.Pessoa;
import UniSaudeWeb.model.Treino;
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
			novoAluno.setIdade(Integer.valueOf(request.getParameter("idade")));
			novoAluno.setBairro(request.getParameter("bairro"));
			novoAluno.setCep(request.getParameter("cep"));
			novoAluno.setCidade(request.getParameter("cidade"));
			novoAluno.setNumerocasa(request.getParameter("numeroCasa"));
			novoAluno.setRua(request.getParameter("rua"));
			novoAluno.setIdAluno(1);
								
			dao.save(novoAluno);

		}
		else {
			long alunoid = Long.parseLong(request.getParameter("alunoid"));
			Aluno aluno = dao.findById(Aluno.class, alunoid).get();

			aluno.setNome(request.getParameter("nome"));
			aluno.setEmail(request.getParameter("email"));
			aluno.setNivelaluno(NivelAluno.valueOf(request.getParameter("nivelAluno").toUpperCase()));
			aluno.setIdade(Integer.valueOf(request.getParameter("idade")));
			aluno.setBairro(request.getParameter("bairro"));
			aluno.setCep(request.getParameter("cep"));
			aluno.setCidade(request.getParameter("cidade"));
			aluno.setNumerocasa(request.getParameter("numeroCasa"));
			aluno.setRua(request.getParameter("rua"));
			aluno.setIdAluno(Long.parseLong(request.getParameter("alunoid")));
			
			dao.update(aluno);
			}
			
		
		response.sendRedirect("consultaAluno.jsp");
		
	}

}
