package controlador;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import conector.Jpa;

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
			sesion.setAttribute("email", mailper);
			sesion.setAttribute("nombre",nombre);
			sesion.setAttribute("password", pass);
			sesion.setAttribute("nval", "correcto");
			sesion.setAttribute("pval", "correcto");
							
			salida.append("<p id='parrafo'> Usuario registrado con exito </p><br><a href=\"Controlador\">Ir a home</a>");
		}else {
			salida.append("<p id='parrafo' >El usuario ya existe</p>");
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
