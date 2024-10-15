package Interfaces;

import java.util.List;

import Modelo.BAdministradores;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletResponse;


public interface AdminCRUD {
	public List listar();
	public void listarImg(int id,HttpServletResponse response);
	public BAdministradores list(int id);
	public boolean add(BAdministradores adm);
    public boolean edit(BAdministradores adm);
    public boolean eliminar(int id);
}
