package Controlador;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Conector.SQL;

/**
 * Servlet implementation class Producto
 */
@WebServlet("/Producto")
public class Producto extends HttpServlet {
	private static final long serialVersionUID = 1L;
  

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Producto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext contextoAplicacion = this.getServletContext();
	    response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		PrintWriter salida = response.getWriter();
		//Conector con=new Conector("jdbc:mysql://192.168.0.5:3306/acuario","acuario", "12345");
		//Conector con=new Conector("jdbc:mysql://miacuario.ddns.net:3306/acuario","acuario", "12345");
		SQL sql=(SQL) contextoAplicacion.getAttribute("conect");
		
		
	    String nombre=request.getParameter("nombre");
	    String marca=request.getParameter("marca");
	    String tipo=request.getParameter("tipo");
	    String precio=request.getParameter("precio");
	    String descrip=request.getParameter("descrip");
	    String web=request.getParameter("web");
	   
	    System.out.print(nombre);
	    System.out.print(marca);
	    System.out.print(tipo);
	    System.out.print(precio);
	    System.out.print(descrip);
	    System.out.print(web);
	    
	    if(sql.getCon()!=null) {
			
	    	try {
				sql.introducirregistro("Producto", nombre, marca, tipo, precio, descrip, web);
	    	} catch (SQLException e4) {
				System.out.println("Error al añadir el nuevo registro");
				System.out.println(e4.getMessage());
			}
	    	salida.append("<p>Registros Guardados con éxito</p>");
	    	}else{
	    	   salida.append("<p>Se ha encontrado un error</p>");
	    	   
	       }
	     
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
