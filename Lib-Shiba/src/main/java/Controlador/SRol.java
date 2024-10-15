package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import Modelo.BRol;
import ModeloDAO.RolDAO;

@MultipartConfig
public class SRol extends HttpServlet {

	
	BRol rol = new BRol();
	RolDAO dao = new RolDAO();
	int id;
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String accion = request.getParameter("accion");
		
		switch (accion) {
		case "Guardar":{
			String nom = request.getParameter("nomRol");
			String desc= request.getParameter("desRol");
			rol.setNombre(nom);
			rol.setDescripcion(desc);
			dao.add(rol);
			response.sendRedirect("mantenimiento.jsp");
	        break;
		}
		case "Eliminar": {
			id = Integer.parseInt(request.getParameter("id"));
			rol.setId(id);
			dao.eliminar(id);
			response.sendRedirect("mantenimiento.jsp");
			break;
		}
	}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

}
