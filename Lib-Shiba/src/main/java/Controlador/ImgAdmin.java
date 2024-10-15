package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import Modelo.BAdministradores;
import ModeloDAO.AdminDAO;
import ModeloDAO.ClienteDAO;


public class ImgAdmin extends HttpServlet {
	AdminDAO dao = new AdminDAO();
	ClienteDAO cli = new ClienteDAO();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String img = request.getParameter("imagen");
        switch (img) {
		case "Administrador": {
			try {
		        System.out.println("ID recibido: " + id); // Agregar este mensaje para depuración
		        dao.listarImg(id, response);
		    } catch (NumberFormatException e) {
		        response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID inválido");
		    } catch (Exception e) {
		        response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error al procesar la solicitud");
		        e.printStackTrace(); // Para depuración
		    }
		}
		case "Cliente":{
			try {
		        System.out.println("ID recibido: " + id); // Agregar este mensaje para depuración
		        cli.listarImg(id, response);
		    } catch (NumberFormatException e) {
		        response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID inválido");
		    } catch (Exception e) {
		        response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error al procesar la solicitud");
		        e.printStackTrace(); // Para depuración
		    }
		}
      }	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
