package edu.upc.cxfrest.negocio;

import java.util.ArrayList;
import java.util.Collection;


import edu.upc.cxfrest.dao.dao;
import edu.upc.cxfrest.excepcion.DAOExcepcion;
import edu.upc.cxfrest.model.User;



public class UserNegocio {
	public User ValidarDeudaInfocorp (String dni) throws DAOExcepcion
	{
		dao Objdao= new dao();
		Collection lst = null;
		try {
			System.out.println("implemen");
			lst =  Objdao.ValidarInfo(dni);
			ArrayList<User> lPersona = (ArrayList<User>) lst; 
			User lTarea = new User();
			for(int i = 0;i < lPersona.size(); i++){
				lTarea = (User)lPersona.get(i);;
			}
			return lTarea;
		} catch (DAOExcepcion e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public void InsertarUser(User obj)
	{		
		dao Objdao= new dao();
		try {
			Objdao.insertarUser(obj);
		} catch (DAOExcepcion e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Collection<User> Listarusuarios() throws DAOExcepcion {
		dao Objdao= new dao();
		return Objdao.ListarUsuarios();
	}

}
