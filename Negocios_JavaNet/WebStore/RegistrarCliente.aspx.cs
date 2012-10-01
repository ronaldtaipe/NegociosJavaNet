using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using rnd = WebStore.serviciosrping;
using System.Drawing;


	
namespace WebStore
{
    public partial class RegistrarCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {
            rnd.PersonaServiceImplService svc = new rnd.PersonaServiceImplService();
            txtApellidos.Text = svc.validaPersona(txtDni.Text);
            List lst=new List();
            //= svc.validaPersonaInfo("43873938").;
            /*
            rnd.PersonaServiceImplService wsRnd = new rnd.PersonaServiceImplService();
            int valida = wsRnd.validaPersona(txtDni.Text);
            if (valida == 1)
            {
                lblResultado.Text = "Registro Completo ... ";
                lblResultado.ForeColor = System.Drawing.Color.Blue;
                Response.AddHeader("REFRESH", "3;URL=Catalogo.aspx");                
            }
            else
            {
                lblResultado.ForeColor = System.Drawing.Color.Red;
                lblResultado.Text = "Ustede No Puede Registrarse";
            }*/
            //rnd.PersonaServiceImplService wsRnd = new rnd.PersonaServiceImplService();

            //String demo = wsRnd.validaPersonaInfo("rr");
           // txtNombres.Text = demo.ToString();
            //String valorwe = wsRnd.validaPersona(txtDni.Text);

            ///Label1.Text = valorwe;


            //String valida = wsRnd.validaPersonaInfo(txtDni.Text);
            //String csv = valida;
            //String[] parts = csv.Split(';');
            //List<String> list = new List<String>(parts);
            //String estado = list[0].ToString();
           
            //if (estado.Equals("1"))
            //{
            //    txtNombres.Text = list[1].ToString();
            //    txtApellidos.Text = list[2].ToString();
            //    txtTelefono.Text = list[3].ToString();
            //    txtDireccion.Text = list[4].ToString();
            //    lblResultado.Text = "Registro Completo ... ";
            //    lblResultado.ForeColor = System.Drawing.Color.Blue;
            //    Response.AddHeader("REFRESH", "6;URL=Catalogo.aspx");
            //}
            //else
            //{
            //    lblResultado.ForeColor = System.Drawing.Color.Red;
            //    lblResultado.Text = "Ustede No Puede Registrarse";
            //}

            
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}