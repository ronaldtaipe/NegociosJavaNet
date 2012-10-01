package pe.reniec.webpersona.service;

import java.util.Collection;

import javax.jws.WebParam;
import javax.jws.WebService;

import pe.reniec.webpersona.dao.dao;
import pe.reniec.webpersona.excepcion.DAOExcepcion;
import pe.reniec.webpersona.modelo.Persona;
import pe.reniec.webpersona.negocio.PersonaNegocio;


@SuppressWarnings("restriction")
@WebService(endpointInterface="pe.reniec.webpersona.service.PersonaService")

public class PersonaServiceImpl implements PersonaService {

	public String validaPersona(@WebParam(name = "dni") String dni) {
		System.out.println("antes del dao");
		dao objDato=new dao();
		System.out.println("despues del dao");
		System.out.println(dni);
		int valor=0;
		try {
		valor = objDato.login(dni);
		} catch (DAOExcepcion e) {
			System.out.println("ocurrio el mensaje");
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return String.valueOf(valor);	
	}
	
	
	public String validaPersonaInfo(@WebParam(name = "dni") String dni)
	{
		PersonaNegocio objNegocio=new PersonaNegocio();
		String lst = null;
		try
		{
			System.out.println("implemen");
			lst = objNegocio.ValidarInfoNegocio(dni);
			///System.out.println(lst.size());
		}
		catch (DAOExcepcion e) 
		{
			e.printStackTrace();
		}
		return lst;	
	}
//	public String validaPersonaInfo(@WebParam(name = "dni") String dni) {
//		if(dni.equals("25723525")){
//			return "Jose Amadeo Martin;Diaz Diaz;985745874;Av. Monterrico 452";
//		}
//		return "w;";
//	}
}