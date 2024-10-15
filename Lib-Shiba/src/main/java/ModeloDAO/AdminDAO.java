package ModeloDAO;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Config.Conexion;
import Interfaces.AdminCRUD;
import Modelo.BAdministradores;
import jakarta.servlet.http.HttpServletResponse;

public class AdminDAO implements AdminCRUD{

	Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    BAdministradores badm = new BAdministradores();
	
	@Override
	public List listar() {
		ArrayList<BAdministradores>list=new ArrayList<>();
		String sql = "SELECT Administradores.*, Roles.Nombre AS NombreRol\r\n"
				+ "FROM Administradores\r\n"
				+ "INNER JOIN Roles ON Administradores.Rol_ID = Roles.ID;\r\n"
				+ "";
		try {
			con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                BAdministradores adm =new BAdministradores();
                adm.setId(rs.getInt("ID"));
                adm.setNombre(rs.getString("Nombre"));
                adm.setApellido(rs.getString("Apellido"));
                adm.setTelefono(rs.getString("Telefono"));
                adm.setDni(rs.getString("DNI"));
                adm.setCorreo(rs.getString("Correo"));
                adm.setContrasena(rs.getString("contraseña"));
                adm.setRolId(rs.getInt("Rol_ID"));
                adm.setRolName(rs.getString("NombreRol"));
                adm.setFoto(rs.getBinaryStream("foto"));;
                adm.setActivo(rs.getString("Activo"));
                list.add(adm);
            }
		}catch (Exception e) {
		}
		return list;
	}

	@Override
	public BAdministradores list(int id) {
		String sql = "select * from administradores where id="+id;
		try {
			con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
            	badm.setId(rs.getInt("Id"));
                badm.setNombre(rs.getString("Nombre"));
                badm.setApellido(rs.getString("Apellido"));
                badm.setTelefono(rs.getString("Telefono"));
                badm.setDni(rs.getString("DNI"));
                badm.setCorreo(rs.getString("Correo"));
                badm.setContrasena(rs.getString("Contraseña"));
                badm.setRolId(rs.getInt("Rol_ID"));
                badm.setFoto(rs.getBinaryStream("Foto"));
            }
		} catch (Exception e) {
		}
		return badm;
	}

	@Override
	public boolean add(BAdministradores adm) {
	    String sql = "INSERT INTO Administradores (Nombre, Apellido, Telefono, DNI, Correo, Contraseña, Rol_ID, Foto) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
	    try {
	        con = cn.getConnection();
	        ps = con.prepareStatement(sql);
	        
	        // Establecer los parámetros
	        ps.setString(1, adm.getNombre());
	        ps.setString(2, adm.getApellido());
	        ps.setString(3, adm.getTelefono());
	        ps.setString(4, adm.getDni());
	        ps.setString(5, adm.getCorreo());
	        ps.setString(6, adm.getContrasena());
	        ps.setInt(7, adm.getRolId());
	        
	        // Establecer el BLOB
	        InputStream inputStream = adm.getFoto(); // Asegúrate de que `getFoto()` devuelva un InputStream
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
	public boolean edit(BAdministradores adm) {
		String sql = "UPDATE Administradores SET Nombre = ?, Apellido = ?, Telefono = ?, DNI = ?, Correo = ?, Contraseña = ?, Rol_ID = ?, Foto = ? WHERE Id = ?";
	    try {
	        con = cn.getConnection(); 
	        ps = con.prepareStatement(sql); 
	        
	        ps.setString(1, adm.getNombre());
	        ps.setString(2, adm.getApellido());
	        ps.setString(3, adm.getTelefono());
	        ps.setString(4, adm.getDni());
	        ps.setString(5, adm.getCorreo());
	        ps.setString(6, adm.getContrasena());
	        ps.setInt(7, adm.getRolId());
	        ps.setBlob(8, adm.getFoto()); // Asigna la foto como un Blob
	        ps.setInt(9, adm.getId()); // Asigna el Id para la cláusula WHERE
	    }catch (Exception e) {
		}
		return false;
	}

	@Override
	public boolean eliminar(int id) {
		String sql = "delete from administradores where Id="+id;
		try {
			con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
		} catch (Exception e) {
		}
		return false;
	}

	
	@Override
	public void listarImg(int id, HttpServletResponse response) {
	    String sql = "SELECT Foto FROM administradores WHERE Id = ?";
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
