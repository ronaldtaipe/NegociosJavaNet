using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebStore.Presentacion
{
    public partial class DetalleArticulo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnComprar_Click(object sender, EventArgs e)
        {
            Response.Redirect("PagoProducto.aspx");
        }
    }
}