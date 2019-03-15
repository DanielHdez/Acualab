package Controlador;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import Conector.SQL;

/**
 * Servlet implementation class Controlador
 */
@WebServlet("/Controlador")
public class Controlador extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	HttpSession sesion;
	SQL sql; 
	String nval = null,pval = null;
    @Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		//Creo un objeto SQL que abre la conexion a labase de datos y me da acceso a los metodos de la clase SQL
		// entre los cuales hay uno que me devuelve un resulset
		this.sql=new SQL("jdbc:mysql://miacuario.ddns.net:3306/acuario","acuario", "12345");
		//Genero el contexto de la aplicacion y genero un atributo disponible en toda la aplicacion en la vida del servlet
		//dicho objeto es sql que tiene parametros de conexion
		ServletContext contextoAplicacion = this.getServletContext();
		contextoAplicacion.setAttribute("conect", sql);
	}

	@Override
	public void destroy() {
		sql.cerrarconexxion();
		super.destroy();
	}

	/**
     * @see HttpServlet#HttpServlet()
     */
    public Controlador() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd;
		sesion=request.getSession(true);
		//Si el nombre es nulo  y la sesion no es nueva se obtiene el nombre de atributo de la sesion
		//lo que me recupera los parametros y me deja entrar
		if (nval==null && !sesion.isNew()) {
			nval = (String) sesion.getAttribute("nval");
			pval= (String) sesion.getAttribute("pval");
		}
		System.out.println(nval+pval);
		// si n es nulo y la sesion es nueva te lleva a login 
		if (nval == null) {
			rd = request.getRequestDispatcher("/index.jsp");
		
		//si se cumple la condicion de registro  va a la página de home si no va a denegado 
		}else if (nval.equals("correcto") && pval.equals("correcto")) {
			rd = request.getRequestDispatcher("/iniciousuario.jsp");
			//sesion.setAttribute("nombre", n); //Guardda el nombre en el atributo de sesion 			
		}
		else {
			rd = request.getRequestDispatcher("/index.jsp");
			sesion.invalidate();//cierra la sesion
		}
		
		
		rd.forward(request, response);

	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
