package model;

public class ParametrosHistorico {
	private int idAnalisis;

	private double k;

	private float nitratos;

	private float nitritos;

	private String observaciones;

	private float ph;

	private float temperatura;

	//Constructor
	public ParametrosHistorico(int idAnalisis, double k, float nitratos, float nitritos, String observaciones, float ph,
			float temperatura) {
		super();
		this.idAnalisis = idAnalisis;
		this.k = k;
		this.nitratos = nitratos;
		this.nitritos = nitritos;
		this.observaciones = observaciones;
		this.ph = ph;
		this.temperatura = temperatura;
	}
	public ParametrosHistorico() {
		
	}
	//toString

	@Override
	public String toString() {
		return "ParametrosHistorico [idAnalisis=" + idAnalisis + ", k=" + k + ", nitratos=" + nitratos + ", nitritos="
				+ nitritos + ", observaciones=" + observaciones + ", ph=" + ph + ", temperatura=" + temperatura + "]";
	}

	//Getters and Setters
	public int getIdAnalisis() {
		return idAnalisis;
	}

	public void setIdAnalisis(int idAnalisis) {
		this.idAnalisis = idAnalisis;
	}

	public double getK() {
		return k;
	}

	public void setK(double string) {
		this.k = string;
	}

	public float getNitratos() {
		return nitratos;
	}

	public void setNitratos(float string) {
		this.nitratos = string;
	}

	public float getNitritos() {
		return nitritos;
	}

	public void setNitritos(float string) {
		this.nitritos = string;
	}

	public String getObservaciones() {
		return observaciones;
	}

	public void setObservaciones(String observaciones) {
		this.observaciones = observaciones;
	}

	public float getPh() {
		return ph;
	}

	public void setPh(float ph) {
		this.ph = ph;
	}

	public float getTemperatura() {
		return temperatura;
	}

	public void setTemperatura(float temperatura) {
		this.temperatura = temperatura;
	}
	
	
	
	
}
