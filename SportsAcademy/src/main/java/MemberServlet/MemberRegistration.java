package MemberServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sportsacademy.beans.Member_Registration_bean;
import sportsacademy.dao.MemberRegistrationDao;

/**
 * Servlet implementation class MemberRegistration
 */
@WebServlet("/MemberRegistration")
public class MemberRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberRegistration() {
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
		String id=request.getParameter("id");
		String password=request.getParameter("pass");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		String planName=request.getParameter("plan");
		
		String []sp=request.getParameterValues("sports");
		String sp_name="";
		
		
		for(String nm:sp)
			sp_name=sp_name+nm+",";
		System.out.println(id+password);
			
	//private  String member_id, password, name, email, phone, address, sports_name, plan_name;
		
		
		java.util.Date d=new java.util.Date();
		long dt=d.getTime();
		
		
		java.sql.Date sd=new java.sql.Date(dt);
			
		Member_Registration_bean mb=new Member_Registration_bean(id, password,name, email, phone, address, sp_name, planName,sd);
	
		
		MemberRegistrationDao dao=new MemberRegistrationDao();
	int status=	dao.addMember(mb)      ;
		 
		if (status>0)
		{
			String successMessage="thanking for your  registration";
		
		request.setAttribute("message", successMessage);
		
		RequestDispatcher rd=request.getRequestDispatcher("/member/member_registration.jsp");
		rd.forward(request, response);
		
//		doGet(request, response);
	}
		
	}

}
