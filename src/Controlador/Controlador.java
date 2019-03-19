package Controlador;

import java.io.IOException;
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
	String nval;// = null,pval = null;
	String pval;
	String name;
	String clave;
	
    @Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		//Creo un objeto SQL que abre la conexion a labase de datos y me da acceso a los metodos de la clase SQL
		// entre los cuales hay uno que me devuelve un resulset
		
		//PAra servidor remoto
		this.sql=new SQL("jdbc:mysql://miacuario.ddns.net:3306/acuario","acuario", "12345");
		
		//Para servidor LAN
		//this.sql=new SQL("jdbc:mysql://192.168.0.5:3306/acuario","acuario", "12345");
		
		//Genero el contexto de la aplicacion y genero un atributo disponible en toda la aplicacion en la vida del servlet
		//dicho objeto es sql que tiene parametros de conexion
		
		ServletContext contextoAplicacion = this.getServletContext();
		contextoAplicacion.setAttribute("conect", sql);
		
		/************************************Probando********************************************************************
		String n,p;
		n="Daniel";
		p="0236";
		try {
		ResultSet rs= sql.getResulset("SELECT `Nombre`,`pass` FROM `usuarios`");
		while (rs.next()) {
			System.out.println(rs.getString("Nombre"));
			System.out.println(n);
			System.out.println(n.equals(rs.getString("Nombre")));
			System.out.print(rs.getString("pass"));
			System.out.println(p);
			System.out.println(p.equals(rs.getString("pass")));
			if(n.equals(rs.getString("Nombre")) && p.equals(rs.getString("pass"))) {
				//sesion.setAttribute("nombre", n);
				//sesion.setAttribute("pass", p);
				//Genero dos variables para validar el incio de sesion 
				nval="correcto";
				pval="correcto";
				//sesion.setAttribute("nval", nval);
				//sesion.setAttribute("pval", pval);
				System.out.println("Coincide algun registro");
				
			}else {
				
				System.out.println("noCoincide algun registro");
			}

			
		}
		} catch (SQLException e) {
			System.out.println("Error al realizar el listado de productos");
			System.out.println(e.getMessage());
		}
		
		 /*****************************************************************************************************************/
		
		
		
		
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
		nval = (String) sesion.getAttribute("nval");
		pval= (String) sesion.getAttribute("pval");
		name = (String) sesion.getAttribute("nombre");
		clave= (String) sesion.getAttribute("password");
		
//System.out.println("1-Entro al controlador con nval= "+nval+" pval= "+pval+ "Nombre: "+name+" Pass: "+clave );		
		
		//Si el nval es nulo  y la sesion no es nueva se obtiene el nombre de atributo de la sesion
		//lo que me recupera los parametros y me deja entrar
		
		if (nval==null && !sesion.isNew()) {
//System.out.println(" Nval null y sesion antigua...." +nval+pval+ "  Nombre: "+name+ " Password: "+clave);		
			
			nval = (String) sesion.getAttribute("nval");
			pval= (String) sesion.getAttribute("pval");
			name = (String) sesion.getAttribute("nombre");
			clave= (String) sesion.getAttribute("password");
			
			if(name==null) {
				rd = request.getRequestDispatcher("/index.jsp");
			}
				else
				rd = request.getRequestDispatcher("/iniciousuario.jsp");
			
			

			
		}else if (nval == null) {// si n es nulo y la sesion es nueva te lleva a login 
			
//System.out.println(" nval null y sesion nueva ...." +nval+pval + "  Nombre: "+name+ " Password: "+clave);
			rd = request.getRequestDispatcher("/index.jsp");
			
		//si se cumple la condicion de registro  va a la página de home si no va a denegado 
		}else if (nval.equals("correcto") && pval.equals("correcto")) {
			
//System.out.println(" nval correcto y pval correcto ...." +nval+pval + "  Nombre: "+name+ " Password: "+clave);		
			rd = request.getRequestDispatcher("/iniciousuario.jsp");
			String  n = (String) sesion.getAttribute("nombre");
			sesion.setAttribute("nombre", n); //Guardda el nombre en el atributo de sesion 			
		
		}else if((nval.equals("incorrecto") && pval.equals("incorrecto"))) {
			
				
			String noregistrado = "noregistrado";
			sesion.setAttribute("registrado", noregistrado);
			rd = request.getRequestDispatcher("/formRegistro.jsp");

//System.out.println(" nval incorrecto y pval incorrecto ...." +nval+pval + "  Nombre: "+name+ " Password: "+clave+" atributo registo "+(String) sesion.getAttribute("registrado"));			
		}	
		
		else {
			rd = request.getRequestDispatcher("/index.jsp");
			sesion.invalidate();//cierra la sesion
		}
		
		
		rd.forward(request, response);

	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
