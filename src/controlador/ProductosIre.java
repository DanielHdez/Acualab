package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import conector.SQL;
import model.Articulo;

/**
 * Servlet implementation class Producto
 */
@WebServlet("/ProductosIre")
public class ProductosIre extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProductosIre() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ServletContext contextoAplicacion = this.getServletContext();
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		PrintWriter salida = response.getWriter();
		// Conector con=new Conector("jdbc:mysql://192.168.0.5:3306/acuario","acuario",
		// "12345");
		// Conector con=new
		// Conector("jdbc:mysql://miacuario.ddns.net:3306/acuario","acuario", "12345");
		SQL sql = new SQL("jdbc:mysql://miacuario.ddns.net:3306/acuario", "acuario", "12345");
		// SQL sql=(SQL) contextoAplicacion.getAttribute("conect");

		String nombre = request.getParameter("nombre");
		String marca = request.getParameter("marca");
		String tipo = request.getParameter("tipo");
		String precio = request.getParameter("precio");
		String descrip = request.getParameter("descrip");
		String web = request.getParameter("web");

		System.out.print(nombre);
		System.out.print(marca);
		System.out.print(tipo);
		System.out.print(precio);
		System.out.print(descrip);
		System.out.print(web);

		if (sql.getCon() != null) {

			try {
				sql.introducirregistro("Producto", nombre, marca, tipo, precio, descrip, web);
			} catch (SQLException e4) {
				System.out.println("Error al añadir el nuevo registro");
				System.out.println(e4.getMessage());
			}
			salida.append("<p>Registros Guardados con éxito</p>");
		} else {
			salida.append("<p>Se ha encontrado un error</p>");

		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Sacamos lo de la tabla

		response.setContentType("text/json");
		response.setCharacterEncoding("UTF-8");
		PrintWriter salida = response.getWriter();
		SQL sql = new SQL("jdbc:mysql://miacuario.ddns.net:3306/acuario", "acuario", "12345");
		
		
		ResultSet rs=sql.getResulset("Select * from Producto" );
		ArrayList <Articulo>Productos = new ArrayList<Articulo>();
		try {
			while (rs.next()) {
				Articulo art= new Articulo();
				art.setNombre(rs.getString("nombre"));
				art.setTipo(rs.getString("tipo"));
				art.setMarca(rs.getString("marca"));
				art.setUso(rs.getString("uso"));
				art.setPrecio(rs.getString("precio"));
				art.setWeb(rs.getString("web"));
				Productos.add(art);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Gson gson = new Gson();
		String productJsonString = gson.toJson(Productos);
		PrintWriter out = response.getWriter();
		out.print(productJsonString);
        out.flush(); 
	}

}
