package edu.upe.cxfrest.service.impl;

import java.io.IOException;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Request;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;
import javax.ws.rs.core.UriInfo;

import edu.upc.cxfrest.model.User;
import edu.upc.cxfrest.service.UserService;
import edu.upc.cxfrest.vo.UserCollection;

public class UserServiceImpl implements UserService {
	@Context
	UriInfo uriInfo;
	@Context
	Request request;

	private static Map<String, User> users = new HashMap<String, User>();

	static {
		users.put("25723525", new User("25723525", "Jose Amadeo Martin",
				"Diaz", "Diaz", "06-11-1974", "140501", "M", "C", "N"));
		users.put("41191089", new User("41191089", "Miryan Amelia", "Ramirez",
				"Ortega", "11-02-1982", "140502", "F", "C","S"));
	}

	public UserServiceImpl() {
	}

	public UserCollection getUsers() {
		return new UserCollection(users.values());
	}

	public User getUser(String dni) {
		return users.get(dni);
	}

	public Response getBadRequest() {
		return Response.status(Status.BAD_REQUEST).build();
	}

	public void newUser(String dni, String nombres, String primerApellido,
			String segundoApellido, String fechaNacimiento, String ubigeo,
			String sexo, String estadoCivil, String deuda, HttpServletResponse servletResponse)
			throws IOException {

		User user = new User(dni, primerApellido, segundoApellido, nombres,
				fechaNacimiento, ubigeo, sexo, estadoCivil, deuda);
		users.put(dni, user);

		URI uri = uriInfo.getAbsolutePathBuilder().path(dni.toString()).build();

		Response.created(uri).build();

		servletResponse.sendRedirect("../../PostUser.jsp");

	}

}
