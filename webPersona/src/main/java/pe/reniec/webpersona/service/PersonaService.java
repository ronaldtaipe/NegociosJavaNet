package pe.reniec.webpersona.service;

import java.util.Collection;
import java.util.List;

import javax.jws.WebParam;
import javax.jws.WebService;

import pe.reniec.webpersona.modelo.Persona;

@SuppressWarnings("restriction")

@WebService
public interface PersonaService {
	public String validaPersona(@WebParam(name = "dni") String dni);
	
	public Persona validaPersonaInfo(
			@WebParam(name = "dni") String dni);

	//public Collection<Persona> validaPersonaInfoTest(
	public List validaPersonaInfoTest(
			@WebParam(name = "dni") String dni);

//	public String validaPersona(
//			@WebParam(name = "dni") String dni
//			
//	); 
//	
//	public String validaPersonaInfo(
//			@WebParam(name = "dni") String dni);

}
