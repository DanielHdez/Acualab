package model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the usuarios database table.
 * 
 */
@Entity
@Table(name="usuarios")
@NamedQuery(name="Usuario.findAll", query="SELECT u FROM Usuario u")
public class Usuario implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String email;

	private String apellidos;

	private String ciudad;

	private int idusuarios;

	private String nombre;

	private String pass;

	private String telefono;

	//bi-directional many-to-one association to Analisi
	@OneToMany(mappedBy="usuario")
	private List<Analisi> analisis;

	public Usuario() {
	}
	
	
	public Usuario(String email, String apellidos, String ciudad, String nombre, String pass, String telefono) {
		super();
		this.email = email;
		this.apellidos = apellidos;
		this.ciudad = ciudad;
		this.nombre = nombre;
		this.pass = pass;
		this.telefono = telefono;
	}


	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getApellidos() {
		return this.apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getCiudad() {
		return this.ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	public int getIdusuarios() {
		return this.idusuarios;
	}

	public void setIdusuarios(int idusuarios) {
		this.idusuarios = idusuarios;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getPass() {
		return this.pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getTelefono() {
		return this.telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public List<Analisi> getAnalisis() {
		return this.analisis;
	}

	public void setAnalisis(List<Analisi> analisis) {
		this.analisis = analisis;
	}

	public Analisi addAnalisi(Analisi analisi) {
		getAnalisis().add(analisi);
		analisi.setUsuario(this);

		return analisi;
	}

	public Analisi removeAnalisi(Analisi analisi) {
		getAnalisis().remove(analisi);
		analisi.setUsuario(null);

		return analisi;
	}

}