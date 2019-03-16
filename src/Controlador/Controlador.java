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
    @Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		//Creo un objeto SQL que abre la conexion a labase de datos y me da acceso a los metodos de la clase SQL
		// entre los cuales hay uno que me devuelve un resulset
		this.sql=new SQL("jdbc:mysql://192.168.0.5:3306/acuario","acuario", "12345");
		//Genero el contexto de la aplicacion y genero un atributo disponible en toda la aplicacion en la vida del servlet
		//dicho objeto es sql que tiene parametros de conexion
		ServletContext contextoAplicacion = this.getServletContext();
		contextoAplicacion.setAttribute("conect", sql);
	}

	@Override
	public void destroy() {
		sql.cerrarconexxion();
		super.destroy();//prueba2
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
		String nval = null,pval = null;
		sesion=request.getSession(true);
		//Si el nombre es nulo  y la sesion no es nueva se obtiene el nombre de atributo de la sesion
		//lo que me recupera los parametros y me deja entrar
		if (nval==null && !sesion.isNew()) {
			nval = (String) sesion.getAttribute("nval");
			pval= (String) sesion.getAttribute("pval");
		}
		// si n es nulo y la sesion es nueva te lleva a login 
		if (nval == null)
			rd = request.getRequestDispatcher("/inicio.jsp");
		
		//si se cumple la condicion de registro  va a la página de home si no va a denegado 
		else if (nval.equals("correcto") && pval.equals("correcto")) {
			rd = request.getRequestDispatcher("/home.jsp");
			//sesion.setAttribute("nombre", n); //Guardda el nombre en el atributo de sesion 			
		}
		else {
			rd = request.getRequestDispatcher("/inicio.jsp");
			sesion.invalidate();//cierra la sesion
		}
		
		ServletContext contextoAplicacion = this.getServletContext();
		
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
		
		rd.forward(request, response);

	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
