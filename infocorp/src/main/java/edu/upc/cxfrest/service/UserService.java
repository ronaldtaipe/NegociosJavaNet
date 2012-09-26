package edu.upc.cxfrest.service;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import edu.upc.cxfrest.model.User;
import edu.upc.cxfrest.vo.UserCollection;

@Path("/user-service/")
@Produces("application/xml")
public interface UserService {

	@GET
	@Path("/users")
	@Produces({ "application/xml", "application/json" })
	public UserCollection getUsers();

	@GET
	@Path("/user/{dni}")
	public User getUser(@PathParam("dni") String dni);

	@GET
	@Path("/users/bad")
	public Response getBadRequest();

	@POST
	@Path("/new")
	@Produces(MediaType.TEXT_HTML)
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	public void newUser(@FormParam("dni") String dni,
			@FormParam("nombres") String nombres,
			@FormParam("primerApellido") String primerApellido,
			@FormParam("segundoApellido") String segundoApellido,
			@FormParam("fechaNacimiento") String fechaNacimiento,
			@FormParam("ubigeo") String ubigeo, @FormParam("sexo") String sexo,
			@FormParam("estadoCivil") String estadoCivil,
			@FormParam("deuda") String deuda,
			@Context HttpServletResponse servletResponse) throws IOException;

}