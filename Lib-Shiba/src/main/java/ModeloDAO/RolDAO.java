package ModeloDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Config.Conexion;
import Interfaces.RolCRUD;
import Modelo.BRol;

public class RolDAO implements RolCRUD {

	Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
	BRol ro = new BRol();
	
	@Override
	public List listar() {
		ArrayList<BRol>list = new ArrayList<>();
		String sql = "Select * from roles";
		try {
			con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                BRol r =new BRol();
                r.setId(rs.getInt("ID"));
                r.setNombre(rs.getString("Nombre"));
                r.setDescripcion(rs.getString("Descripcion"));
                list.add(r);
            }
		}catch (Exception e) {
		}
		return list;
	}

	@Override
	public BRol list(int id) {
		String sql = "select * from roles where id="+id;
		try {
			con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
            	ro.setId(rs.getInt("ID"));
                ro.setNombre(rs.getString("Nombre"));
                ro.setDescripcion(rs.getString("Descripcion"));
            }
		} catch (Exception e) {
		}
		return ro;
	}

	@Override
	public boolean add(BRol rol) {
		String sql = "INSERT INTO ROLES (nombre,descripcion) values (?,?)";
		try {
			con = cn.getConnection();
	        ps = con.prepareStatement(sql);
	        ps.setString(1, rol.getNombre());
	        ps.setString(2, rol.getDescripcion());
		} catch (Exception e) {
		}
		return false;
	}

	@Override
	public boolean edit(BRol rol) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean eliminar(int id) {
		String sql = "delete from roles where Id="+id;
		try {
			con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
		} catch (Exception e) {
		}
		return false;
	}

}
