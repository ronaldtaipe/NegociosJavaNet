package pe.reniec.webpersona.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import pe.reniec.webpersona.excepcion.DAOExcepcion;
import pe.reniec.webpersona.modelo.Persona;
import pe.reniec.webpersona.util.ConexionBD;

public class dao extends BaseDao {

	public int login(String dni) throws DAOExcepcion {
		System.out.println("login" + dni);
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		int valor = 0;
		try {
			String query = "select estado from persona where dni=?";
			System.out.println(query);
			con = ConexionBD.obtenerConexion();
			System.out.println("ya obtuvo la conexion");
			stmt = con.prepareStatement(query);
			System.out.println("despues de preparar");
			stmt.setString(1, dni);
			rs = stmt.executeQuery();

			if (rs.next()) {
				valor = rs.getInt("estado");
			}
		} catch (SQLException e) {
			System.err.println(e.getMessage());
			throw new DAOExcepcion(e.getMessage());
		} finally {
			this.cerrarResultSet(rs);
			this.cerrarStatement(stmt);
			this.cerrarConexion(con);
		}
		if (valor == 0) {
			return 0;
		} else {
			return valor;
		}
	}
	
	public Collection<Persona> ValidarInfo(String dni) throws DAOExcepcion {
		Collection<Persona> lstPersona = new ArrayList<Persona>();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		Persona persona = new Persona();
			try {
				String query = "select Dni,Nombres,Apellidos,direccion,telefono,Estado from persona where Dni=?";
				System.out.println(query);
				con = ConexionBD.obtenerConexion();
				System.out.println("ya obtuvo la conexion");
				stmt = con.prepareStatement(query);
				stmt.setString(1, dni);
				rs = stmt.executeQuery();

				//if (rs.next()) {
				//	valor = rs.getInt("estado");
				//}
//				String query = "select Dni,Nombres,Apellidos,direccion,telefono,Estado from persona where dni=?";
//				System.out.println(query);
//				con = ConexionBD.obtenerConexion();
//				System.out.println("ya obtuvo la conexion");
//				stmt = con.prepareStatement(query);
//				System.out.println("antes de pasar el parametrpo");
//				stmt.setString(1, dni);
//				rs = stmt.executeQuery();
				if (rs.next()) {
					//while (rs.next()) {
						persona.setDni(rs.getString("dni"));
						persona.setNombres(rs.getString("nombres"));
						persona.setApellidos(rs.getString("apellidos"));
						persona.setDireccion(rs.getString("direccion"));
						persona.setTelefono(rs.getString("telefono"));
						persona.setEstado(rs.getInt("estado"));
						System.out.println(persona.getApellidos());
						lstPersona.add(persona);
					//}
				} else {

					persona.setDni("000000");
					persona.setNombres("No Autorizada");
					persona.setApellidos("No Autorizada");
					persona.setDireccion("No Autorizada");
					persona.setTelefono("No Autorizada");
					persona.setEstado(0);
					lstPersona.add(persona);
				}

			} catch (SQLException e) {
				System.err.println("msg"+e.getMessage());
				throw new DAOExcepcion(e.getMessage());
			} finally {
				this.cerrarResultSet(rs);
				this.cerrarStatement(stmt);
				this.cerrarConexion(con);
			}
			System.out.println("listado de personas");
			//System.out.println(lstPersona.size());
			return lstPersona;
			//return  persona.getApellidos();
		}

//	public String ValidarInfo(String dni) throws DAOExcepcion {
//		//Collection<Persona> lstPersona = new ArrayList<Persona>();
//	Connection con = null;
//	PreparedStatement stmt = null;
//	ResultSet rs = null;
//	Persona persona = new Persona();
//		try {
//			String query = "select Dni,Nombres,Apellidos,direccion,telefono,Estado from persona where Dni=?";
//			System.out.println(query);
//			con = ConexionBD.obtenerConexion();
//			System.out.println("ya obtuvo la conexion");
//			stmt = con.prepareStatement(query);
//			stmt.setString(1, dni);
//			rs = stmt.executeQuery();
//
//			//if (rs.next()) {
//			//	valor = rs.getInt("estado");
//			//}
////			String query = "select Dni,Nombres,Apellidos,direccion,telefono,Estado from persona where dni=?";
////			System.out.println(query);
////			con = ConexionBD.obtenerConexion();
////			System.out.println("ya obtuvo la conexion");
////			stmt = con.prepareStatement(query);
////			System.out.println("antes de pasar el parametrpo");
////			stmt.setString(1, dni);
////			rs = stmt.executeQuery();
//			if (rs.next()) {
//				//while (rs.next()) {
//					persona.setDni(rs.getString("dni"));
//					persona.setNombres(rs.getString("nombres"));
//					persona.setApellidos(rs.getString("apellidos"));
//					persona.setDireccion(rs.getString("direccion"));
//					persona.setTelefono(rs.getString("telefono"));
//					persona.setEstado(rs.getInt("estado"));
//					System.out.println(persona.getApellidos());
//					//lstPersona.add(persona);
//				//}
//			} else {
//				
//				persona.setDni("000000");
//				persona.setNombres("No Autorizada");
//				persona.setApellidos("No Autorizada");
//				persona.setDireccion("No Autorizada");
//				persona.setTelefono("No Autorizada");
//				persona.setEstado(0);
//				//lstPersona.add(persona);
//			}
//
//		} catch (SQLException e) {
//			System.err.println("msg"+e.getMessage());
//			throw new DAOExcepcion(e.getMessage());
//		} finally {
//			this.cerrarResultSet(rs);
//			this.cerrarStatement(stmt);
//			this.cerrarConexion(con);
//		}
//		System.out.println("listado de personas");
//		//System.out.println(lstPersona.size());
//		//return lstPersona;
//		return  persona.getApellidos();
//	}
}
