package Controlador;

import jakarta.security.auth.message.callback.PrivateKeyCallback.Request;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.io.InputStream;

import Modelo.BAdministradores;
import ModeloDAO.AdminDAO;

@MultipartConfig
public class SAdministrador extends HttpServlet {
	

	BAdministradores adm = new BAdministradores();
	AdminDAO dao = new AdminDAO();
	int id;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String accion = request.getParameter("accion");
		switch (accion) {
		case "Guardar": {
			String nom = request.getParameter("nomAdmin");
			String ape = request.getParameter("apeAdmin");
			String tel = request.getParameter("conAdmin");
			String dni = request.getParameter("dniAdmin");
			String correo1 = request.getParameter("corr1Admin");
	        String correo2 = request.getParameter("corr2Admin");
	        String correoCompleto = correo1 + "@" + correo2;
	        String contra = request.getParameter("contraAdmin");
	        int rolSeleccionado = Integer.parseInt(request.getParameter("rolAdmin"));
	        Part part = request.getPart("picture__input");
	        if (part != null && part.getSize() > 0) {
	            InputStream inputStream = part.getInputStream();
	            adm.setFoto(inputStream);
	        } else {
	            System.out.println("No se ha subido ningún archivo.");
	        }
	        adm.setNombre(nom);
	        adm.setApellido(ape);
	        adm.setTelefono(tel);
	        adm.setDni(dni);
	        adm.setCorreo(correoCompleto);
	        adm.setContrasena(contra);
	        adm.setRolId(rolSeleccionado);
	        dao.add(adm);
            response.sendRedirect("mantenimiento.jsp");
	        break;
		}
		
		case "Editar":{
			int id = Integer.parseInt(request.getParameter("id"));
		    request.setAttribute("idadm", id); 
		}
		case "Actualizar":{
			id = Integer.parseInt(request.getParameter("txtid"));
		}
		case "Eliminar": {
			id = Integer.parseInt(request.getParameter("id"));
			adm.setId(id);
			dao.eliminar(id);
			response.sendRedirect("mantenimiento.jsp");
			break;
		}
		default:
			
		}
	}
	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

}
