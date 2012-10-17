using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using WebStore.Entidades;
using WebStore.Datos;

namespace WebStore.Negocio
{
    public class ClienteBE
    {

        public ClienteBE()
        {
        }

        public int GrabarCliente(string Dni, string Nombres, string Apellidos, string Email, string Direccion, string Celular, string Contrasena, int Estado)
        {
            ClienteDao clientedao = new ClienteDao();
            return clientedao.InsertarCliente(Dni, Nombres, Apellidos, Email, Direccion, Celular, Contrasena, Estado);
        }

        public Cliente obtieneDniNombresCliente(string Correo, string Contrasena)
        {
            ClienteDao clientedao = new ClienteDao();
            return clientedao.devuelveCliente(Correo, Contrasena);
        }

        public Cliente obtieneDatosCliente(string dni)
        {
            ClienteDao clientedao = new ClienteDao();
            return clientedao.devuelveClienteporDni(dni);
        }


    }
}