package Modelo;

import java.io.InputStream;

public class BCliente {
    
	int id;
	String nom;
	String ape;
	String tel;
	String dni;
	String dire;
	String correo;
	String contra;
	String fecha_reg;
	InputStream foto;
	
	

	public BCliente() {
	}

	public BCliente(int id, String nom, String ape, String tel, String dni, String dire, String correo, String contra,
			String fecha_reg, InputStream foto) {
		this.id = id;
		this.nom = nom;
		this.ape = ape;
		this.tel = tel;
		this.dni = dni;
		this.dire = dire;
		this.correo = correo;
		this.contra = contra;
		this.fecha_reg = fecha_reg;
		this.foto = foto;
	}

	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getNom() {
		return nom;
	}



	public void setNom(String nom) {
		this.nom = nom;
	}



	public String getApe() {
		return ape;
	}



	public void setApe(String ape) {
		this.ape = ape;
	}



	public String getTel() {
		return tel;
	}



	public void setTel(String tel) {
		this.tel = tel;
	}



	public String getDni() {
		return dni;
	}



	public void setDni(String dni) {
		this.dni = dni;
	}



	public String getDire() {
		return dire;
	}



	public void setDire(String dire) {
		this.dire = dire;
	}



	public String getCorreo() {
		return correo;
	}



	public void setCorreo(String correo) {
		this.correo = correo;
	}



	public String getContra() {
		return contra;
	}



	public void setContra(String contra) {
		this.contra = contra;
	}



	public String getFecha_reg() {
		return fecha_reg;
	}



	public void setFecha_reg(String fecha_reg) {
		this.fecha_reg = fecha_reg;
	}



	public InputStream getFoto() {
		return foto;
	}



	public void setFoto(InputStream foto) {
		this.foto = foto;
	}

	
}