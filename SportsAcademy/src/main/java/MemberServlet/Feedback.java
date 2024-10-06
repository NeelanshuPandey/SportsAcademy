package MemberServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sportsacademy.beans.Feedbackbean;
import sportsacademy.dao.MemberDao;



/**
 * Servlet implementation class Feedback
 */
@WebServlet("/Feedback")
public class Feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Feedback() {
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

String name=request.getParameter("name");
		
		String email=request.getParameter("email");
		
		String rating=request.getParameter("rating");
		
		String remark=request.getParameter("remark");
		
		System.out.println(name+email+rating+remark);
		
		Feedbackbean fb=new Feedbackbean();
		fb.setName(name);
		
		fb.setEmail(email);
		fb.setRating(rating);
		fb.setRemark(remark);
		
		MemberDao dao=new MemberDao();
		int status=dao.addFeedback(fb);
		
		if (status>0) {
			
		
String successMessage="thanking for your feedback";
		
		request.setAttribute("message", successMessage);
		
		RequestDispatcher rd=request.getRequestDispatcher("/member/memberFeedback.jsp");
		rd.forward(request, response);
		}
	}

}
