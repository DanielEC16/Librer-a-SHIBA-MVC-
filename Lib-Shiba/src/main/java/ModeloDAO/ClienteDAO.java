package ModeloDAO;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import Config.Conexion;
import Interfaces.ClienteCRUD;
import Modelo.BAdministradores;
import Modelo.BCliente;
import jakarta.servlet.http.HttpServletResponse;



public class ClienteDAO implements ClienteCRUD {
	
	Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    BCliente bc = new BCliente();
    
	@Override
	public List listar() {
		ArrayList<BCliente>list=new ArrayList<>();
		String sql = "Select * from clientes";
		try {
			con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                BCliente cli =new BCliente();
                cli.setId(rs.getInt("Id"));
                cli.setNom(rs.getString("nombre"));
                cli.setApe(rs.getString("apellido"));
                cli.setTel(rs.getString("telefono"));
                cli.setDni(rs.getString("DNI"));
                cli.setDire(rs.getString("direccion"));
                cli.setCorreo(rs.getString("correo"));
                cli.setContra(rs.getString("contraseña"));
                cli.setFecha_reg(rs.getString("fecha_registro"));
                cli.setFoto(rs.getBinaryStream("Foto"));
                list.add(cli);
            }
		}catch (Exception e) {
		}
		return list;
	}
	@Override
	public BCliente list(int id) {
		String sql = "select * from clientes where id="+id;
		try {
			con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
            	bc.setId(rs.getInt("ID")); // "ID" en mayúsculas
            	bc.setNom(rs.getString("Nombre"));
            	bc.setApe(rs.getString("Apellido"));
            	bc.setTel(rs.getString("Telefono"));
            	bc.setDni(rs.getString("DNI"));
            	bc.setDire(rs.getString("Direccion"));
            	bc.setCorreo(rs.getString("Correo"));
            	bc.setContra(rs.getString("Contraseña")); 
            	bc.setFecha_reg(rs.getString("fecha_registro"));
            	bc.setFoto(rs.getBinaryStream("Foto"));

            }
		} catch (Exception e) {
		}
		return bc;
	}
	@Override
	public boolean add(BCliente cli) {
		String sql = "INSERT INTO Clientes (Nombre, Apellido, Telefono, DNI, Direccion, Correo, Contraseña, Foto) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
	    try {
	        con = cn.getConnection();
	        ps = con.prepareStatement(sql);
	        
	        // Establecer los parámetros
	        ps.setString(1, cli.getNom());
	        ps.setString(2, cli.getApe());
	        ps.setString(3, cli.getTel());
	        ps.setString(4, cli.getDni());
	        ps.setString(5, cli.getDire());
	        ps.setString(6, cli.getCorreo());
	        ps.setString(7, cli.getContra());

	        InputStream inputStream = cli.getFoto(); // Asegúrate de que `getFoto()` devuelva un InputStream
	        if (inputStream != null) {
	            ps.setBlob(8, inputStream);
	        } else {
	            ps.setNull(8, java.sql.Types.BLOB); // Si no hay archivo, establece el valor como NULL
	        }

	        // Ejecutar la consulta
	        int rowsAffected = ps.executeUpdate();
	        return rowsAffected > 0; // Retornar true si se insertaron filas
	    } catch (Exception e) {
	        e.printStackTrace(); // Registra el error para el diagnóstico
	    }
	    return false;
	}
	@Override
	public boolean edit(BCliente cli) {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public boolean eliminar(int id) {
	    String sql = "DELETE FROM clientes WHERE id ="+id;
	    try {
	        con = cn.getConnection();
	        ps = con.prepareStatement(sql);
	        ps.executeUpdate();
	    } catch (Exception e) {
	    } 
	    return false; 
	}

	
	
	@Override
	public void listarImg(int id, HttpServletResponse response) {
		String sql = "SELECT Foto FROM clientes WHERE Id = ?";
	    InputStream inputStream = null;
	    OutputStream outputStream = null;
	    BufferedInputStream bufferedInputStream = null;
	    BufferedOutputStream bufferedOutputStream = null;
	    response.setContentType("image/*");

	    try {
	        outputStream = response.getOutputStream();
	        con = cn.getConnection();
	        ps = con.prepareStatement(sql);
	        ps.setInt(1, id); // Utilizamos un parámetro para evitar inyecciones SQL
	        rs = ps.executeQuery(); // Capturamos el resultado de la consulta

	        if (rs.next()) {
	            inputStream = rs.getBinaryStream("Foto");
	        }

	        if (inputStream != null) {
	            bufferedInputStream = new BufferedInputStream(inputStream);
	            bufferedOutputStream = new BufferedOutputStream(outputStream);
	            int i = 0;
	            while ((i = bufferedInputStream.read()) != -1) {
	                bufferedOutputStream.write(i);
	            }
	            bufferedOutputStream.flush();
	        }
	    } catch (Exception e) {
	        e.printStackTrace(); // Para ayudar con la depuración si algo sale mal
	    }
	    
	}
		
}


