package Conector;

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
	
	public Jpa() {
		try {
			factory = Persistence.createEntityManagerFactory("ConvertirJPA");
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
	
	public String ObtenerAnalisis() {
		TypedQuery<Analisi> query = em.createNamedQuery("Cliente.findAll", Analisi.class);
		List<Analisi> analisi = query.getResultList();
		String salida="<table>";
		for (Analisi ana: analisi) {
			salida=salida+"<tr>";
			salida=salida+"<td>"+ana.getTemperatura()+"</td>";
			salida=salida+"<td>"+ana.getPh()+"</td>";
			salida=salida+"<td>"+ana.getNitritos()+"</td>";
			salida=salida+"<td>"+ana.getNitratos()+"</td>";
			salida=salida+"<td>"+ana.getK()+"</td>";
			salida=salida+"</tr>";
		}
		salida=salida+"</table>";
		this.mensaje = "Hemos obtenido la tabla de Analisis";
		return salida;
	}
	
	public boolean guardarnalisi(String Ph, String kh, String nitritos, String nitratos, String temp, String observaciones, String email) {
		Analisi a;
		this.ph=Float.parseFloat(Ph);
		this.kh=Float.parseFloat(kh);
		this.nitri=Float.parseFloat(nitritos);
		this.nitra=Float.parseFloat(nitratos);
		this.tempe=Float.parseFloat(temp);
		Usuario usuario = em.find(Usuario.class, email);
		if(usuario ==null) {
			return false;
		}else {
			a=new Analisi(this.kh, nitra, nitri, observaciones, ph, tempe, usuario);
			EntityTransaction tx = em.getTransaction();
			tx.begin();
			em.persist(a);
			tx.commit();
			return true; 
		}

	}
}
