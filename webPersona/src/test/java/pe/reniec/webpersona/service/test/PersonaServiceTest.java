package pe.reniec.webpersona.service.test;

import java.util.ArrayList;
import java.util.Collection;

import junit.framework.Assert;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import pe.reniec.webpersona.excepcion.DAOExcepcion;
import pe.reniec.webpersona.modelo.Persona;
import pe.reniec.webpersona.negocio.PersonaNegocio;
import pe.reniec.webpersona.service.PersonaService;

public class PersonaServiceTest {
	
	private PersonaService personaService = null;
	public PersonaServiceTest()
	{
		ApplicationContext context = 
		new ClassPathXmlApplicationContext("/Configuracion.xml");
		this.personaService = (PersonaService) context.getBean("personaServiceClient");
	}

	@Test
	public void testPersonaService() throws DAOExcepcion
	{
		PersonaNegocio neg=new  PersonaNegocio();
		System.out.println("123");
		String lst=personaService.validaPersonaInfo("43873985");
		
		//lst=neg.ValidarInfoNegocio("43873938"); //personaService.validaPersonaInfo("43873985");
		//String valor=personaService.validaPersona("43873985");
		//System.out.println(valor);
		//Assert.assertTrue(lst.size()>0);
		System.out.println(lst);
		//Assert.assertEquals("1",valor);
	}
}
