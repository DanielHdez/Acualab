package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Informe")
public class Informe extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Informe() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int ph = Integer.parseInt(request.getParameter("ph"));
		int kh = Integer.parseInt(request.getParameter("dur"));
		int no2 = Integer.parseInt(request.getParameter("no2"));
		int no3 = Integer.parseInt(request.getParameter("no3"));
		int temp = Integer.parseInt(request.getParameter("temp"));
		
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		PrintWriter salida = response.getWriter();
		
		salida.append("<p>"+ph +"</p>");
	
	
	
	}

	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
