package sportsacademy.admin.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String id=request.getParameter("adminId").trim();//trim the space
		String pass=request.getParameter("adminPass");
		
		System.out.println(id+ pass);
		
		if(id.equalsIgnoreCase("admin")&&pass.equals("precursor"))
		{
			
			HttpSession hs=request.getSession();//it will create session
			String sessionId=hs.getId();
			System.out.println("Session id is "+sessionId);
			
			hs.setAttribute("sessionKey", id); //setting the attribute in session scope
			
//			hs.setAttribute("sessionKey", id);
			hs.setAttribute("role","admin");
			
			
			response.sendRedirect("/SportsAcademy/admin/admin_home.jsp");//it redirects the browser to another url
		}
		else {
			
			String errormessage="invalid id/ Password";
			
			request.setAttribute("message", errormessage);//message is the key,
			
			RequestDispatcher rd=request.getRequestDispatcher("/admin/admin_login.jsp");
			
			rd.forward(request, response);
		}
	}  

}
