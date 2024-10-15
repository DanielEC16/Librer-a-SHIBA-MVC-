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
	
	@Override
	public List listar() {
		ArrayList<BRol>list = new ArrayList<>();
		String sql = "Select * from roles";
		try {
			con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                BRol rol =new BRol();
                rol.setId(rs.getInt("ID"));
                rol.setNombre(rs.getString("Nombre"));
                rol.setDescripcion(rs.getString("Descripcion"));
                list.add(rol);
            }
		}catch (Exception e) {
		}
		return list;
	}

	@Override
	public BRol list(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean add(BRol rol) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean edit(BRol rol) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean eliminar(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}
