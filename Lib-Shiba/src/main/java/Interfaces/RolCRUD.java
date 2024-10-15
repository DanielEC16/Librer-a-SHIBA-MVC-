package Interfaces;

import java.util.List;

import Modelo.BRol;

public interface RolCRUD {
	public List listar();
	public BRol list(int id);
	public boolean add(BRol rol);
	public boolean edit(BRol rol);
	public boolean eliminar(int id);
}
