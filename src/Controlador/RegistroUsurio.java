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
 * Servlet implementation class RegistroUsurio
 */
@WebServlet("/RegistroUsurio")
public class RegistroUsurio extends HttpServlet {
	private static final long serialVersionUID = 1L;
    String nombre,apellido,ciudad,telefono,mailper,pass;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistroUsurio() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesion = request.getSession(false);
		nombre = request.getParameter("nombre");
		apellido = request.getParameter("apellido");
		ciudad = request.getParameter("ciudad");
		telefono = request.getParameter("telefono");
		mailper = request.getParameter("mailper");
		pass = request.getParameter("pass");
		//System.out.println(Ph+"-"+kh+"-"+nitritos+"-"+nitratos+"-"+temp+"-"+observaciones);
		//Abro una entidad con JPA y accedo al metodo que devuelve un booleano si es correcto
		Jpa nuevoanalisi=new Jpa();
		//String nombreusuario=(String) sesion.getAttribute("nombre");
		//System.out.println(nombreusuario);
		Boolean par=nuevoanalisi.guardarusuario(nombre, apellido, ciudad, telefono, mailper, pass);
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		PrintWriter salida = response.getWriter();
		if(par==true) {
			salida.append("<p> Los datos se han guardado con �xito </p>");
		}else {
			salida.append("<p>No se han guardado los datos del an�lisis</p>");
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
