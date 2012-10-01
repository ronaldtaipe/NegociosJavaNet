package pe.reniec.webpersona.negocio;

import java.util.Collection;

import pe.reniec.webpersona.dao.dao;
import pe.reniec.webpersona.excepcion.DAOExcepcion;
import pe.reniec.webpersona.modelo.Persona;

public class PersonaNegocio {

	
	public String ValidarInfoNegocio (String dni) throws DAOExcepcion
	{
		System.out.println("negocio");
		dao Objdao= new dao();
		return  Objdao.ValidarInfo(dni);
		//return lstPersona;
	}	
}
