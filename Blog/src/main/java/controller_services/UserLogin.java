package controller_services;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import controller_metiers.UserMetier;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/login")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLogin() {
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
		// TODO Auto-generated method stub
		doGet(request, response);
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		
		HttpSession session = request.getSession();
		
		session.setAttribute("login", login);
		
		
		UserMetier um = new UserMetier();
		
		boolean t = um.testLogin(login, password);
		
		PrintWriter pw = response.getWriter();
		pw.println(t);
		
		if(t==true) {
			pw.println("Utilisateur connecté avec succés !");
			RequestDispatcher rd = request.getRequestDispatcher("accueil.jsp");
			rd.forward(request, response);
		}else {
			pw.println("Login ou mot de passe incorrect !");
			RequestDispatcher rd = request.getRequestDispatcher("userLoginErr.html");
			rd.forward(request, response);
		}
	}

}
