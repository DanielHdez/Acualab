package Controlador;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Conector.SQL;



@WebServlet("/acceso")
public class Acceso extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	SQL sql;      
	
    public Acceso() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession sesion = request.getSession(false);
		RequestDispatcher rd;	
		ServletContext contextoAplicacion = this.getServletContext();
	
		String nval = null,pval = null;
		
		//Aqui recupero el valor de nombre y password de la pestaña de login 
		
		String n = request.getParameter("nombre");
		String p = request.getParameter("password");
		
		//ahora consulto en la base de datos si existe el nombre de usuario y contraseña
		//Obtengo un objeto sql
		
		SQL sql=(SQL) contextoAplicacion.getAttribute("conect");	
			//obtengo resulsetde la tabla de usuarios mediante el objeto sql 
		try {
			
//	System.out.println("1 acabo de entrar a acceso");
			
			ResultSet rs= sql.getResulset("SELECT `Nombre`,`pass` FROM `usuarios`");
			
			int i=0;
			
			rd = request.getRequestDispatcher("Controlador");
			
//	System.out.println("2 añado el redirec a controlador");
			while (rs.next()) {
				
//	System.out.println("3 entra en el while i= "+i+ "nombre "+n+" pass "+p );
				
	//comparo si el campo texto coincide con el de la base de datos 
				
				if(n.equals(rs.getString("Nombre")) && p.equals(rs.getString("pass"))) {
//	System.out.println("4 son iguales, entro en el if");
	
						//meto los parametros en la sesion del servidor si se cumple la condicion 
						sesion.setAttribute("nombre", n);
//	System.out.println("4.1 meto el nombre. "+n+" a la sesion");
						sesion.setAttribute("password", p);
//	System.out.println("4.2 meto el pass. "+p+" a la sesion");
				
						//Genero dos variables para validar el incio de sesion 
						nval="correcto";
						pval="correcto";
						
	
						sesion.setAttribute("nval", nval);
//	System.out.println("4.4 meto el nval. "+nval+" a la sesion");	
						sesion.setAttribute("pval", pval);
//	System.out.println("4.5 meto el pval. "+pval+" a la sesion");	
					
					
						
						rd = request.getRequestDispatcher("Controlador");
					break;
				}else {
					
					nval="incorrecto";
					pval="incorrecto";
					
//	System.out.println("4.errer asigno valor incorrecto ya q no hay usuario");
					sesion.setAttribute("nval", nval);
//	System.out.println("4.1errer asigno valor incorrecto ya q no hay usuario");
					sesion.setAttribute("pval", pval);				
					
	
					rd = request.getRequestDispatcher("Controlador");
			i++;}
				
			}	
				
				rd.forward(request, response);
			
		} catch (Exception e) {
//				System.out.println("5 Error al leer usuarios en la BBDD");
				System.out.println(e.getMessage());
//				System.out.println("despues de e.get");
			}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
