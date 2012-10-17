using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using WebStore;
using WebStore.Entidades;
using WebStore.Negocio;


namespace WebStore
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
            
        }

        protected void btncanlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            string correo = txtCorreo.Text;
            string password = txtContrasena.Text;
            
            ClienteBE clientebe = new ClienteBE();
            Cliente cliente = clientebe.obtieneDniNombresCliente(correo, password);
            if (cliente != null)
            {
                lblResultado.ForeColor = System.Drawing.Color.Blue;
                lblResultado.Text = "Bienvenido ... ";
                Response.AppendHeader("REFRESH", "2;URL=" + "Catalogo.aspx");

                Label dniGlobal = (Label)Master.FindControl("lblDniClienteGlobal");
                Label NombresGlobal = (Label)Master.FindControl("lblNombresClienteGlobal");

                dniGlobal.Text = cliente.dni;
                NombresGlobal.Text = cliente.nombres;
            }
            else
            {
                txtCorreo.Text = "";
                txtContrasena.Text = "";
                lblResultado.ForeColor = System.Drawing.Color.Red;
                lblResultado.Text = "Usuario o Contraseña Erronea";
            }
        }





    }
}