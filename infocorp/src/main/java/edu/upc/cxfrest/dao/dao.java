package edu.upc.cxfrest.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import edu.upc.cxfrest.excepcion.DAOExcepcion;
import edu.upc.cxfrest.model.User;
import edu.upc.cxfrest.util.ConexionBD;


public class dao extends BaseDao {

	public Collection<User> ValidarInfo(String dni) throws DAOExcepcion {
		Collection<User> lstPersona = new ArrayList<User>();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		User persona = new User();
			try {
				String query = "select dni,primerApellido,segundoApellido,nombres,fechaNacimiento,ubigeo,sexo,estadoCivil,deuda from Deuda where Dni=?";
				System.out.println(query);
				con = ConexionBD.obtenerConexion();
				System.out.println("ya obtuvo la conexion");
				stmt = con.prepareStatement(query);
				stmt.setString(1, dni);
				rs = stmt.executeQuery();

				if (rs.next()) {
					//,,,,
					//,,,,
						persona.setDni(rs.getString("dni"));
						persona.setPrimerApellido(rs.getString("primerApellido"));
						persona.setSegundoApellido(rs.getString("segundoApellido"));
						persona.setNombres(rs.getString("nombres"));
						persona.setFechaNacimiento(rs.getString("fechaNacimiento"));
						persona.setUbigeo(rs.getString("ubigeo"));
						persona.setSexo(rs.getString("sexo"));
						persona.setEstadoCivil(rs.getString("estadoCivil"));
						persona.setDeuda(rs.getDouble("deuda"));						
						lstPersona.add(persona);
					//}
				} else {

					persona.setDni("00000000");
					persona.setPrimerApellido("No Registrado");
					persona.setSegundoApellido("No Registrado");
					persona.setNombres("No Registrado");
					persona.setFechaNacimiento("No Registrado");
					persona.setUbigeo("No Registrado");
					persona.setSexo("No Registrado");
					persona.setEstadoCivil("No Registrado");
					persona.setDeuda(0.00);						
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
	
	public Collection<User> ListarUsuarios() throws DAOExcepcion {
		Collection<User> lstPersona = new ArrayList<User>();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		User persona1 = new User();
			try {
				String query = "select dni,primerApellido,segundoApellido,nombres,fechaNacimiento,ubigeo,sexo,estadoCivil,deuda from Deuda";
				System.out.println(query);
				con = ConexionBD.obtenerConexion();
				System.out.println("ya obtuvo la conexion");
				stmt = con.prepareStatement(query);
				rs = stmt.executeQuery();

				if (rs.next()) {
					while (rs.next()) {
						User persona = new User();
						persona.setDni(rs.getString("dni"));
						persona.setPrimerApellido(rs.getString("primerApellido"));
						persona.setSegundoApellido(rs.getString("segundoApellido"));
						persona.setNombres(rs.getString("nombres"));
						persona.setFechaNacimiento(rs.getString("fechaNacimiento"));
						persona.setUbigeo(rs.getString("ubigeo"));
						persona.setSexo(rs.getString("sexo"));
						persona.setEstadoCivil(rs.getString("estadoCivil"));
						persona.setDeuda(rs.getDouble("deuda"));						
						lstPersona.add(persona);
					}
					//}
				} else {

					persona1.setDni("00000000");
					persona1.setPrimerApellido("No Registrado");
					persona1.setSegundoApellido("No Registrado");
					persona1.setNombres("No Registrado");
					persona1.setFechaNacimiento("No Registrado");
					persona1.setUbigeo("No Registrado");
					persona1.setSexo("No Registrado");
					persona1.setEstadoCivil("No Registrado");
					persona1.setDeuda(0.00);						
					lstPersona.add(persona1);
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
	
	
	public void insertarUser(User vo) throws DAOExcepcion {
		String query = "insert into Deuda(dni,primerApellido,segundoApellido,nombres,fechaNacimiento,ubigeo,sexo,estadoCivil,deuda) values(?,?,?,?,?,?,?,?,?)";
		Connection con = null;
		PreparedStatement stmt = null;
		try {
			con = ConexionBD.obtenerConexion();
			stmt = con.prepareStatement(query);
			//stmt.setInt(1, vo.getIdUsuario());
			stmt.setString(1, vo.getDni());
			stmt.setString(2, vo.getPrimerApellido());
			stmt.setString(3, vo.getSegundoApellido());
			stmt.setString(4, vo.getNombres());
			stmt.setString(5, vo.getFechaNacimiento());
			stmt.setString(6, vo.getUbigeo());
			stmt.setString(7, vo.getSexo());
			stmt.setString(8, vo.getEstadoCivil());
			stmt.setDouble(9, vo.getDeuda());
			int i = stmt.executeUpdate();
			if (i != 1) {
				throw new SQLException("No se pudo insertar");
			}
			else
			{
				System.out.println("registrado Ok");
			}
		} catch (SQLException e) {
			System.err.println(e.getMessage());
			throw new DAOExcepcion(e.getMessage());
		} finally {
			this.cerrarStatement(stmt);
			this.cerrarConexion(con);
		}
	}
}
