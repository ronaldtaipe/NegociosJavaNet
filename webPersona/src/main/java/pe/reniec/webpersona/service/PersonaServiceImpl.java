package pe.reniec.webpersona.service;

import javax.jws.WebParam;
import javax.jws.WebService;

import com.sun.xml.bind.v2.runtime.unmarshaller.XsiNilLoader.Array;

@SuppressWarnings("restriction")
@WebService(endpointInterface="pe.reniec.webpersona.service.PersonaService")

public class PersonaServiceImpl implements PersonaService {

	public String validaPersona(@WebParam(name = "dni") String dni) {
		if(dni.equals("25723525")){
			return "1";
		}		
		return "0";
	}
	
	
	public String validaPersonaInfo(@WebParam(name = "dni") String dni) {
		if(dni.equals("25723525")){
			return "1;Jose Amadeo Martin;Diaz Diaz;985745874;Av. Monterrico 452";
		}
		return "0;";
	}

}
