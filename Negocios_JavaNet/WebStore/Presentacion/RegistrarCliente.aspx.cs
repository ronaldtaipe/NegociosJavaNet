using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using rnd = WebStore.serviciosrping;
using System.Drawing;

using WebStore.Negocio;
	
namespace WebStore
{
    public partial class RegistrarCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {


            //          ------------------------------------------------------------------------------------
            //          -------------------------- Comentado por salir Error -------------------------------
            //          ------------------------------------------------------------------------------------
            rnd.PersonaServiceImplService   svc = new rnd.PersonaServiceImplService();
            var persona = svc.validaPersonaInfo(txtDni.Text);
            int sw = persona.estado;
            if (sw == 0)
            {
                lblResultado.ForeColor = System.Drawing.Color.Red;
                lblResultado.Text = "Ustede No Puede Registrarse";
            }
            else
            {
               //------------------------------------------------------------------------------------
               //------------------------------------------------------------------------------------
               //------------------------------------------------------------------------------------
                lblResultado.Text = "";
                ClienteBE clientebe = new ClienteBE();
                string Dni=txtDni.Text;
                string Nombres=txtNombres.Text; 
                string Apellidos=txtApellidos.Text;
                string Email=txtCorreo.Text;
                string Direccion=txtDireccion.Text;
                string Celular=txtTelefono.Text;
                string Contrasena=txtPassword.Text;
                int Estado = Int32.Parse("1");

                clientebe.GrabarCliente(Dni, Nombres, Apellidos, Email, Direccion, Celular, Contrasena, Estado);
                clean();
                lblResultado.ForeColor = System.Drawing.Color.Blue;
                lblResultado.Text = "Registro Satisfactorio... Gracias";
                Response.AppendHeader("REFRESH", "5;URL=" + "Catalogo.aspx");
            }
        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        public void clean()
        {
            txtDni.Text = "";
            txtNombres.Text = "";
            txtApellidos.Text = "";
            txtCorreo.Text = "";
            txtDireccion.Text = "";
            txtTelefono.Text = "";
            txtPassword.Text = "";
        }



    }
}