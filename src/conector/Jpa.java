package conector;

import java.util.List;


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import model.Analisi;
import model.Producto;
import model.Usuario;

public class Jpa {
	private EntityManagerFactory factory;
	private EntityManager em;
	private String mensaje;
	Float ph,kh,nitri,nitra,tempe;
	String nombre,apellido,ciudad,telefono,mailper,pass;  
	
	
	public Jpa() {
		try {
			factory = Persistence.createEntityManagerFactory("AcuarioProject");
			em = factory.createEntityManager();
			this.mensaje = "Hemos obtenido el EntityManager";

		} catch (Exception e) {
			this.mensaje = "Error obteniendo el EntityManager\n" + e.getMessage();
		}
	}

	@Override
	public String toString() {
		return "Jpa [mensaje=" + mensaje + "]";
	}
	
	public List<Producto> obtenerProductos() {
		TypedQuery<Producto> query = em.createNamedQuery("Producto.findAll", Producto.class);
		List<Producto> productos = query.getResultList();		
		return productos;
		
	}
	
	public String obtenerProductosstring() {
		TypedQuery<Producto> query = em.createNamedQuery("Producto.findAll", Producto.class);
		List<Producto> producto = query.getResultList();
		String salida="";
		for (Producto ana: producto) {
			salida=salida+"<tr>";
			salida=salida+"<td>"+ana.getTipo()+"</td>";
			salida=salida+"<td>"+ana.getMarca()+"</td>";
			salida=salida+"<td>"+ana.getNombre()+"</td>";
			salida=salida+"<td>"+ana.getUso()+"</td>";
			salida=salida+"<td>"+ana.getPrecio()+"</td>";
			salida=salida+"<td>"+ana.getWeb()+"</td>";
			salida=salida+"<td>"+ana.getImagen()+"</td>";
			salida=salida+"</tr>";
		}
		
		this.mensaje = "Hemos obtenido la tabla de Analisis";
		return salida;
		
	}
	
	
	public String ObtenerAnalisis(String nombre) {
		
		
		Usuario usuario = em.find(Usuario.class,nombre);
		if(usuario!=null) {
		TypedQuery<Analisi> query = em.createQuery("Select ana from Analisi ana Where ana.usuario.email = '" + nombre + "'", Analisi.class);
		List<Analisi> analisi = query.getResultList();	
		System.out.println(usuario);
		//String salida="<table>";
		String salida="";
		for (Analisi ana: analisi) {
			salida=salida+"<tr>";
			salida=salida+"<td>"+ana.getFecha()+"</td>";
			salida=salida+"<td>"+ana.getTemperatura()+"</td>";
			salida=salida+"<td>"+ana.getPh()+"</td>";
			salida=salida+"<td>"+ana.getNitritos()+"</td>";
			salida=salida+"<td>"+ana.getNitratos()+"</td>";
			salida=salida+"<td>"+ana.getK()+"</td>";
			salida=salida+"<td>"+ana.getObservaciones()+"</td>";
			salida=salida+"</tr>";
		}
		
		//salida=salida+"</table>";
		this.mensaje = "Hemos obtenido la tabla de Analisis";
		return salida;
		}else {
		return "";}}
	
	public boolean guardarnalisi(String ph, String kh, String nitritos, String nitratos, String temp, String observaciones, String nombre) {
		Analisi a;
		this.ph=Float.parseFloat(ph);
		this.kh=Float.parseFloat(kh);
		this.nitri=Float.parseFloat(nitritos);
		this.nitra=Float.parseFloat(nitratos);
		this.tempe=Float.parseFloat(temp);
		Usuario usuario = em.find(Usuario.class,nombre);
		System.out.println(usuario);
		if(usuario ==null) {
			return false;
		}else {
			a=new Analisi(this.kh, nitra, nitri, observaciones, this.ph, tempe, usuario);
			try {
			EntityTransaction tx = em.getTransaction();
			tx.begin();
			em.persist(a);
			tx.commit();
			return true; 
			}catch (Exception e) {
				e.printStackTrace();
				return false;
			}
		}

	}
	
	public boolean guardarusuario(String nombre, String apellidos, String ciudad, String telefono, String email, String pass) {
		Usuario u;
		u = em.find(Usuario.class,nombre);
		try {
		if(u ==null) {
			u= new Usuario(email, apellidos, ciudad, nombre, pass, telefono);
			EntityTransaction tx = em.getTransaction();
			tx.begin();
			em.persist(u);
			tx.commit();
			
			return true; 
			
		}else {
			return false;
			
			}
		
			}catch (Exception e) {
				e.printStackTrace();
				return false;
			}
		}	
	
}
