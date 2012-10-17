using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebStore.Entidades;
using WebStore.Negocio;



using System.Collections;
using System.Xml;

using System.Diagnostics;

namespace WebStore.Presentacion
{
    public partial class PagoProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            string dni = txtDniCliente.Text;
            HttpWebRequest httpReq = (HttpWebRequest)WebRequest.Create("http://localhost:8080/cxfrest/rs/user-service/user/" + dni);
            HttpWebResponse httpRes = (HttpWebResponse)httpReq.GetResponse();
            StreamReader reader = new StreamReader(httpRes.GetResponseStream());
            string archivoJson = reader.ReadToEnd();
            
            JavaScriptSerializer js = new JavaScriptSerializer();
            Dictionary<string, ClienteInfocorp> oDictionary = js.Deserialize<Dictionary<string, ClienteInfocorp>>(archivoJson);

            if (oDictionary != null)
            {
                int deuda = Convert.ToInt32(oDictionary["user"].deuda);
            
                if (deuda <= 0)
                {
                    txtMuestra.ForeColor = System.Drawing.Color.Blue;
                    txtMuestra.Text = "Se ha registrado satisfactoriamente su Compra .... Gracias =)";
                    Response.AppendHeader("REFRESH", "3;URL=" + "index.aspx");
                }
                else
                {
                    txtMuestra.Text =
                    "Sr.: " + 
                    oDictionary["user"].nombres + " " +
                    oDictionary["user"].primerApellido + " " +
                    oDictionary["user"].segundoApellido + "\n\n" +
                    "DNI: \n" + oDictionary["user"].dni + "\n\n" +
                    "Deuda Total en Entidades Bancarias: \n" + oDictionary["user"].deuda + " Nuevos Soles";                
                }                
            }

        }

        protected void btnBuscaCliente_Click(object sender, EventArgs e)
        {
            string dni = txtDniCliente.Text;
            ClienteBE clientebe = new ClienteBE();
            Cliente cliente = clientebe.obtieneDatosCliente(dni);
            if (cliente.dni != null)
            {
                lblApellidos.Text = cliente.apellidos;
                lblNombres.Text = cliente.nombres;
                lblDireccion.Text = cliente.direccion;

                lblApellidosNombresFactura.Text = cliente.apellidos + " " + cliente.nombres;
                lblDniFactura.Text = cliente.dni;
                txtDireccionFactura.Text = cliente.direccion;
                lblTelefonoFactura.Text = cliente.celular;

                btnRegistrar.Enabled = true;
            }
            else
            {
                lblResultado.Text = "Usted es un Usuario No Registrado";
                Response.AppendHeader("REFRESH", "5;URL=" + "RegistrarCliente.aspx");
            }
            
        }
        
   
    }
}