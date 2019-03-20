package model;

import java.util.Arrays;

public class Articulo {
	private int idProducto;

	private byte[] imagen;

	private String marca;

	private String nombre;

	private String precio;

	private String tipo;

	private String uso;

	private String web;

	//Constructor
	public Articulo(int idProducto, byte[] imagen, String marca, String nombre, String precio, String tipo, String uso,
			String web) {
		super();
		this.idProducto = idProducto;
		this.imagen = imagen;
		this.marca = marca;
		this.nombre = nombre;
		this.precio = precio;
		this.tipo = tipo;
		this.uso = uso;
		this.web = web;
	}

	public Articulo() {
		// TODO Auto-generated constructor stub
	}

	//toString
	@Override
	public String toString() {
		return "Articulo [idProducto=" + idProducto + ", imagen=" + Arrays.toString(imagen) + ", marca=" + marca
				+ ", nombre=" + nombre + ", precio=" + precio + ", tipo=" + tipo + ", uso=" + uso + ", web=" + web
				+ "]";
	}

	
	//Getters and Setters
	public int getIdProducto() {
		return idProducto;
	}

	public void setIdProducto(int idProducto) {
		this.idProducto = idProducto;
	}

	public byte[] getImagen() {
		return imagen;
	}

	public void setImagen(byte[] imagen) {
		this.imagen = imagen;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getPrecio() {
		return precio;
	}

	public void setPrecio(String precio) {
		this.precio = precio;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getUso() {
		return uso;
	}

	public void setUso(String uso) {
		this.uso = uso;
	}

	public String getWeb() {
		return web;
	}

	public void setWeb(String web) {
		this.web = web;
	}
	
	
}
