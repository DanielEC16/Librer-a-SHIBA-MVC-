package Interfaces;

import java.util.List;
import Modelo.BCliente;
import jakarta.servlet.http.HttpServletResponse;


public interface ClienteCRUD {
	public List listar();
	public BCliente list(int id);
	public void listarImg(int id,HttpServletResponse response);
	public boolean add(BCliente cli);
    public boolean edit(BCliente cli);
    public boolean eliminar(int id);
}
