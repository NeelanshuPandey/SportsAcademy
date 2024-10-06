package sportsacademy.common.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sportsacademy.beans.Contact;
import sportsacademy.dao.CommonDao;

/**
 * Servlet implementation class ContactUs
 */
@WebServlet("/ContactUs")
public class ContactUs extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactUs() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
	
	}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String name=request.getParameter("username");
		
		String phone=request.getParameter("userPhone");
		
		String email=request.getParameter("userEmail");
		
		String question=request.getParameter("userQuestion");
		
		System.out.println(name+email+phone+question);
		
		Contact c=new Contact();
		c.setName(name);
		c.setEmail(email);
		c.setPhone(phone);
		c.setQuestion(question);
		
		CommonDao dao=new CommonDao();
		int status=dao.addContact(c);//call method of dao class
		
		System.out.println("value return by add contact method "+status);
		
		if (status>0) {
			
			
		
		
		
		String successMessage="thanking for contacting us";
		
		request.setAttribute("message", successMessage);
		
		RequestDispatcher rd=request.getRequestDispatcher("/jsp/contact_us.jsp");
		rd.forward(request, response);
	}
	}
}
