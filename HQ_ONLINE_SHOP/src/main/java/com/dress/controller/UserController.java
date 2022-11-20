package com.dress.controller;

import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.hostmdy.model.Dress;
import com.hostmdy.model.User;
import com.hostmdy.model.UserDAO;

/**
 * Servlet implementation class UserController
 */
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 @Resource(name="jdbc/dressonlineshop")   
		private DataSource dataSource;
	 	private UserDAO userDAO;
	 @Override
	public void init() throws ServletException {
		 userDAO = new UserDAO(dataSource);
	}
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mode = request.getParameter("mode");
		if(mode == null)
			mode="SIGNUP";
		switch(mode) {
			case "SIGNUP":signUp(request, response);
			break;
			case "SIGNIN":signin(request, response);
			break;
//			case "LOGIN_PAGE":loginPage(request, response);
//			break;
			case "TEMP" : loadTempList(request, response);
			break;
			case "LOAD" : loadPage(request, response);
			break;
			case "UPDATE" : updateUser(request, response);
			break;
			case "DELETE" : deleteUser(request, response);
			break;
			default: signUp(request, response);
			break;
		}
	}
	
	//Create User
	private void signUp(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		boolean adminOk = Boolean.parseBoolean(request.getParameter("role"));
		String role = adminOk ? "admin" : "user";
		
		User user = new User(username, email, password, role);
		int rowEffected = this.userDAO.createUser(user);//Go to userDAO
		if(rowEffected>0)
			response.sendRedirect("signIn.jsp");
	}
	
	//Go to Gallery page
	private void signin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email= request.getParameter("email");
		String originalPassword = request.getParameter("password");
		boolean valid= this.userDAO.isValidUser(email, originalPassword);
			if(valid) {
				User user = this.userDAO.getUserByEmail(email);
				HttpSession session = request.getSession();
				session.setAttribute("user",user);
				
				response.sendRedirect("gallery.jsp");
//				RequestDispatcher rd = request.getRequestDispatcher("gallery.jsp");
//				rd.forward(request, response);
			}
			else {
				boolean loginFail= true;
				request.setAttribute("loginFail", loginFail);
				RequestDispatcher rd = request.getRequestDispatcher("signIn.jsp");
				rd.forward(request, response);	
			}
	}

	
	
	private void loadTempList(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//		HttpSession session = request.getSession();
//		User user = (User) session.getAttribute("user");
//		request.setAttribute("user", user);
		
		int id = Integer.parseInt(request.getParameter("id"));
		User user = this.userDAO.UserList(id);
		request.setAttribute("user", user);
		RequestDispatcher rd = request.getRequestDispatcher("userUpdate.jsp");
		rd.forward(request, response);
	}

	private void loadPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<User> userList = this.userDAO.loadUser();
		request.setAttribute("userList", userList);
		
		RequestDispatcher rd = request.getRequestDispatcher("userListLoad.jsp");
		rd.forward(request, response);
		
	}
	
	private void updateUser(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//		HttpSession session = request.getSession();
//		User user = (User) session.getAttribute("user");
//		request.setAttribute("user", user);
		
		int id = Integer.parseInt(request.getParameter("id"));
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String role = request.getParameter("role");
		
		
		User user = new User(id, username, email, password, role);
		int rowEffected = this.userDAO.updateUser(user);
		if(rowEffected > 0)
			loadPage(request, response);
	}
	
	private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		request.setAttribute("user", user);
		int id = Integer.parseInt(request.getParameter("id"));
		int rowEffected = this.userDAO.deleteUser(id);
		if(rowEffected > 0)
			loadPage(request, response);
	}
	
//	private void loginPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		boolean loginFail= false;
//		request.setAttribute("loginFail", loginFail);
//		RequestDispatcher rd = request.getRequestDispatcher("signin.jsp");
//		rd.forward(request, response);
//	}

	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
