package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import Conector.SQL;
import model.ParametrosHistorico;

/**
 * Servlet implementation class Historico
 */
@WebServlet("/Historico")
public class Historico extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Historico() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Sacamos lo la tabla
		
		response.setContentType("text/json");
		response.setCharacterEncoding("UTF-8");
		//SQL sql = new SQL("jdbc:mysql://miacuario.ddns.net:3306/acuario", "acuario", "12345");
		SQL sql=new SQL("jdbc:mysql://192.168.0.5:3306/acuario","acuario", "12345");
		
		ResultSet rs=sql.getResulset("Select * from Analisis" );
		ArrayList <ParametrosHistorico>Historico = new ArrayList<ParametrosHistorico>();
		try {
			while (rs.next()) {
				ParametrosHistorico his= new ParametrosHistorico();
				his.setK(rs.getDouble("k"));
				his.setNitratos(rs.getFloat("nitratos"));
				his.setNitritos(rs.getFloat("nitritos"));
				his.setObservaciones(rs.getString("observaciones"));
				his.setPh(rs.getFloat("ph"));
				his.setTemperatura(rs.getFloat("temperatura"));
				Historico.add(his);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Gson gson = new Gson();
		String productJsonString = gson.toJson(Historico);
		PrintWriter out = response.getWriter();
		out.print(productJsonString);
        out.flush(); 
       
	}

}
