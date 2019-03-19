package Controlador;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Conector.Jpa;

/**
 * Servlet implementation class ControlAnalisis
 */
@WebServlet("/ControlAnalisis")
public class ControlAnalisis extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String Ph ,kh, nitritos, nitratos, temp, observaciones, email;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControlAnalisis() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession sesion = request.getSession(false);
		Ph = request.getParameter("ph");
		kh = request.getParameter("dur");
		nitritos = request.getParameter("no2");
		nitratos = request.getParameter("no3");
		temp = request.getParameter("tem");
		observaciones = request.getParameter("coment");
		System.out.println(Ph+"-"+kh+"-"+nitritos+"-"+nitratos+"-"+temp+"-"+observaciones);
		//Abro una entidad con JPA y accedo al metodo que devuelve un booleano si es correcto
		Jpa nuevoanalisi=new Jpa();
		String nombreusuario=(String) sesion.getAttribute("nombre");
		System.out.println(nombreusuario);
		Boolean par=nuevoanalisi.guardarnalisi(Ph, kh, nitritos, nitratos, temp, observaciones, nombreusuario);
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		PrintWriter salida = response.getWriter();
		if(par==true) {
			salida.append("<p> Los datos se han guardado con éxito </p>");
		}else {
			salida.append("<p>No se han guardado los datos del análisis</p>");
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
