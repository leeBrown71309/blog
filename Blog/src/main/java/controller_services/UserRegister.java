package controller_services;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.UserModel;

import java.io.IOException;
import java.io.PrintWriter;


import controller_metiers.UserMetier;

/**
 * Servlet implementation class UserRegister
 */
@WebServlet("/register")
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegister() {
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
		String prenom = request.getParameter("prenom");
		String nom = request.getParameter("nom");
		String login = request.getParameter("login");
		String pwd = request.getParameter("password");
		String role = "user";
		
		
		HttpSession session = request.getSession();
		
		
		
		
		UserModel umod = new UserModel(prenom,nom,login,pwd,role);
		session.setAttribute("prenom", prenom);
		session.setAttribute("nom", nom);
		session.setAttribute("login", login);
		session.setAttribute("role", role);
		
		
		UserMetier umet = new UserMetier();
		
		boolean t = umet.verifLogin(login);
		if(t==true) {
			
			
			PrintWriter pw = response.getWriter();
			pw.println("Réessayez !");
		}
		else {
		umet.addUser(umod);
		umet.searchId(login);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("userLogin.html");
		rd.forward(request, response);
		
		}
	}

}
