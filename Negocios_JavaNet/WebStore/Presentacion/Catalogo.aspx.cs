using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebStore
{
    public partial class Catalogo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {  

        }

        protected void btnVerDetalle_Click(object sender, EventArgs e)
        {
            Response.Redirect("DetalleArticulo.aspx");
        }

        protected void btnDetalleArticulo1_Click(object sender, EventArgs e)
        {
            Response.Redirect("DetalleArticulo1.aspx");
        }

        
    }


}