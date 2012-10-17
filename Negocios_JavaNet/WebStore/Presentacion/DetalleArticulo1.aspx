<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/webstore.Master" AutoEventWireup="true" CodeBehind="DetalleArticulo1.aspx.cs" Inherits="WebStore.Presentacion.DetalleArticulo11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<%--Copiar esta parte para que quede centrado--%>
<div class="wrapper row2">
 <div id="container" class="clear">    
    <section id="content">
    <!-- content body -->
    <article>
        <table>
            <tr>
            <td>
            <figure><img src="images/articulos/1.jpg" width="260" height="260" alt=""></figure>
            </td>
            <td>
                <strong>MEMORIA USB MODELO ANGRY BIRD</strong><br /><br />
                Memorias usb con exclusivo diseño de los mundialmente conocidos angry birds de 8gb <br />
                Amplia capacidad de 8gb de almacenamiento. <br />
                Fabricación de excelente calidad en resistente. <br />
                Automática compatibilidad con windows xp, windows vista y windows 7.(No requiere software de instalación).<br />
                Versión 2.0<br />
                <strong>S/. <asp:Label ID="lblPrecioArticuloDetalle" runat="server" Text="49.00" 
                    Font-Size="Medium"></asp:Label> Nuevos Soles </strong>
                <p class="more">
                    <asp:Button ID="btnSolicitarArticulo1" runat="server" Text="Solicitar Articulo&raquo;" BackColor="White" BorderColor="#FFFFCC" 
                BorderWidth="0px" Font-Bold="False" Font-Size="Small" ForeColor="#FF9900" ></asp:Button>
                </p>
            </td>
            </tr>
        </table>
    </article>
    <!-- Final content body -->
    </section>
    </div>
</div>

</asp:Content>
