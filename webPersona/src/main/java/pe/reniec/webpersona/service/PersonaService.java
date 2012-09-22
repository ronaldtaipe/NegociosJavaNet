package pe.reniec.webpersona.service;

import javax.jws.WebParam;
import javax.jws.WebService;

@SuppressWarnings("restriction")

@WebService
public interface PersonaService {

	public String validaPersona(
			@WebParam(name = "dni") String dni
	); 
	
	public String validaPersonaInfo(
			@WebParam(name = "dni") String dni
	);
}
