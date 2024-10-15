package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import Modelo.BCliente;
import ModeloDAO.ClienteDAO;

@MultipartConfig
public class SCliente extends HttpServlet {

	BCliente cli = new BCliente();
	ClienteDAO clidao = new ClienteDAO();
	int id;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String accion = request.getParameter("accion");
		switch (accion) {
		case "Guardar": {
			String nom = request.getParameter("nomCli");
			String ape = request.getParameter("apeCli");
			String tel = request.getParameter("telCli");
			String dni = request.getParameter("dniCli");
			String dir = request.getParameter("dirCli");
			String correo1 = request.getParameter("corr1Cli");
	        String correo2 = request.getParameter("corr2Cli");
	        String correoCompleto = correo1 + "@" + correo2;
	        String contra = request.getParameter("contraCli");
	        Part part = request.getPart("picture__input");
	        if (part != null && part.getSize() > 0) {
	            InputStream inputStream = part.getInputStream();
	            cli.setFoto(inputStream);
	        } else {
	            System.out.println("No se ha subido ningún archivo.");
	        }
	        cli.setNom(nom);
	        cli.setApe(ape);
	        cli.setTel(tel);
	        cli.setDni(dni);
	        cli.setDire(dir);
	        cli.setCorreo(correoCompleto);
	        cli.setContra(contra);
	        clidao.add(cli);
            response.sendRedirect("mantenimiento.jsp");
	        break;
		}
		case "Eliminar":{
			id = Integer.parseInt(request.getParameter("id"));
			cli.setId(id);
			clidao.eliminar(id);
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
