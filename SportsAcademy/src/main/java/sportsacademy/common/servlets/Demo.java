package sportsacademy.common.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Demo
 */
@WebServlet("/Demo")
public class Demo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Demo() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String name="javaprakash";
		int age =109;
		System.out.println(name +age);
		
		PrintWriter pw=response.getWriter();
		
		
		response.setContentType("text/html");
		
		pw.println("hello servlet");
		pw.println("<h1>hello Your name is "+name+"</h1>");
		
		pw.println("<h1> Your Age is:"+age+"</h1>");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
			}

}
