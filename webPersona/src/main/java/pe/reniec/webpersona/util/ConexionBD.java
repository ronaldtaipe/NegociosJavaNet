package pe.reniec.webpersona.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionBD {

public static Connection obtenerConexion() throws SQLException {

	Connection con = null;
	try {
		System.out.println("antes de confirgurar la conexion");
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		//// Create a variable for the connection string.
     //   String connectionUrl = "jdbc:sqlserver://localhost:1433/reniec","sa","soporte";
        //String connectionUrl = "jdbc:sqlserver://localhost:1433/;forwardReadOnlyMethod=direct" + ";databaseName=reniec;user=sa;password=soporte";
        //("jdbc:sqlserver://NOMBREDB:1433", "USER", "PASS");
		con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databasename=reniec;user=sa;password=.10;");
		System.out.println("despues de confirgurar la conexion");
	} catch (ClassNotFoundException e) {
		System.out.println(e.getMessage());
		e.printStackTrace();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return con;
}


//
//public static Connection obtenerConexion() throws SQLException {
//
//	Connection con = null;
//	try {
//		System.out.println("antes de confirgurar la conexion");
//		Class.forName("com.mysql.jdbc.Driver");
//		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/reniec","root", "root");
//		System.out.println("despues de confirgurar la conexion");
//	} catch (ClassNotFoundException e) {
//		System.out.println(e.getMessage());
//		e.printStackTrace();
//	} catch (Exception e) {
//		e.printStackTrace();
//	}
//	return con;
//}


}
