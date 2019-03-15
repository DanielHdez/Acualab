package Controlador;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Conector.SQL;

/**
 * Servlet implementation class cceso
 */
@WebServlet("/cceso")
public class Acceso extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HttpSession sesion;
	SQL sql;      
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Acceso() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext contextoAplicacion = this.getServletContext();
		String nval = null,pval = null;
		//Aqui recupero el valor de nombre y password de la pestaña de login 
		String n = request.getParameter("nombre");
		String p = request.getParameter("pass");
		//ahora consulto en la base de datos si existe el nombre de usuario y contraseña
		//Obtengo un objeto sql
		SQL sql=(SQL) contextoAplicacion.getAttribute("conect");	
			//obtengo resulsetde la tabla de usuarios mediante el objeto sql 
		try {
			ResultSet rs= sql.getResulset("SELECT `Nombre`,`pass` FROM `usuarios`");
			while (rs.next()) {
					//comparo si el campo texto coincide con el de la base de datos 
				if(n==rs.getString("Nombre")&&p==rs.getString("NOMBRE")) {
						//meto los parametros en la sesion del servidor si se cumple la condicion 
						sesion.setAttribute("nombre", n);
						sesion.setAttribute("pass", p);
						//Genero dos variables para validar el incio de sesion 
						nval="correcto";
						pval="correcto";
						sesion.setAttribute("nval", nval);
						sesion.setAttribute("pval", pval);
				}
			}
		} catch (SQLException e) {
				System.out.println("Error al realizar el listado de productos");
				System.out.println(e.getMessage());
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
