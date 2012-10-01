<%@ Page Title="" Language="C#" MasterPageFile="~/webstore.Master" AutoEventWireup="true" CodeBehind="RegistrarCliente.aspx.cs" Inherits="WebStore.RegistrarCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<%--Copiar esta parte para que quede centrado--%>
<div class="wrapper row2">
 <div id="container" class="clear">
    <!-- content body -->
    <section id="content">
     <%--Copiar esta parte para que quede centrado--%>
    <h2>Registro de Usuarios</h2>
        <form action="#" method="post">
        <table border="0">
          <tr>
            <th><label for="dni"><small>DNI (requerido)</small></label></th>
            <th><asp:TextBox ID="txtDni" runat="server" Width="353px" MaxLength="8"></asp:TextBox>&nbsp;</th>
            <th><asp:Label ID="lblResultado" runat="server" Width="204px" ForeColor="#0000CC"></asp:Label></th>
          </tr>          
          <tr>
            <th><label for="nombres"><small>Nombres</small></label></th>
            <th><asp:TextBox ID="txtNombres" runat="server" Width="353px"></asp:TextBox></th>
            <th>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
              </th>
          </tr>
          <tr>
            <th><label for="apellidos"><small>Apellidos</small></label></th>
            <th><asp:TextBox ID="txtApellidos" runat="server" Width="353px"></asp:TextBox></th>
            <th></th>
          </tr>
          <tr>
            <th><label for="direccion"><small>Dirección</small></label></th>
            <th><asp:TextBox ID="txtDireccion" runat="server" Width="354px"></asp:TextBox></th>
            <th></th>
          </tr>
          <tr>            
            <th><label for="telefono"><small>Teléfono</small></label></th>
            <th><asp:TextBox ID="txtTelefono" runat="server" Width="353px"></asp:TextBox></th>
            <th></th>
          </tr>
          <tr>            
            <th><label for="correo"><small>Correo</small></label></th>
            <th><asp:TextBox ID="txtCorreo" runat="server" Width="353px"></asp:TextBox></th>
            <th></th>
          </tr>
          <tr>           
            <th><label for="password"><small>Password</small></label></th>
            <th><asp:TextBox ID="txtPassword" runat="server" Width="351px" TextMode="Password"></asp:TextBox></th>
            <th></th>
          </tr>
          <tr>           
            <th><label for="confirmar"><small>Confirmar Password</small></label></th>
            <th><asp:TextBox ID="txtPasswordConfirmar" runat="server" Width="351px" TextMode="Password"></asp:TextBox></th>
            <th></th>
          </tr>
          <tr>
            <th><asp:Button ID="btnRegistrar" runat="server" Text="Registrarme" onclick="BtnRegistrar_Click" /></th>         
            <th><asp:Button ID="btnCancelar" runat="server" Text="Cancelar" onclick="btnCancelar_Click" /></th>                   
            <th><asp:CompareValidator ID="CompareValidator1" runat="server" 
                  ControlToCompare="txtPassword" ControlToValidate="txtPasswordConfirmar" 
                  ErrorMessage="El password no coincide" Font-Bold="True" ForeColor="Red"></asp:CompareValidator></th>
          </tr>
          </table>
        </form>
        

    <%--Copiar esta parte para que quede centrado--%>
  </section>
    </div>
</div>
    <%--Copiar esta parte para que quede centrado--%>


</asp:Content>
