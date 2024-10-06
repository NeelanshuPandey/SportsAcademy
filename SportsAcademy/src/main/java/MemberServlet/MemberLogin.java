package MemberServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MemberLogin
 */
@WebServlet("/MemberLogin")
public class MemberLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberLogin() {
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
		
String userid=request.getParameter("userid");
		
		String password=request.getParameter("password");
		
		System.out.println(userid+ password);
		
		if(userid.equalsIgnoreCase("member")&& password.equals("precursor"))
		{
			HttpSession hsn=request.getSession();
			
			String sessionId=hsn.getId();
			System.out.println("Your Session ID is:"+sessionId);
			
			hsn.setAttribute("sessionKey", userid);
			
			hsn.setAttribute("role", "member");
			
			
			response.sendRedirect("/SportsAcademy/member/member_home.jsp");
		}
		else {
			
			String errormsg="invalid userid/password";
			
			request.setAttribute("message", errormsg);
			
			RequestDispatcher rdp=request.getRequestDispatcher("/member/member_login.jsp");
			
			rdp.forward(request, response);
		}
	}

}
