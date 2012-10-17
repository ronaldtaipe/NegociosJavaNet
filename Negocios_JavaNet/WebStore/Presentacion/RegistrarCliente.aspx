<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/webstore.Master" AutoEventWireup="true" CodeBehind="RegistrarCliente.aspx.cs" Inherits="WebStore.RegistrarCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
        <table>
          <tr>
            <th><label for="dni"><small>DNI (requerido)</small></label></th>
            <th><asp:TextBox ID="txtDni" runat="server" Width="353px" MaxLength="8"></asp:TextBox>&nbsp;</th>
            <th>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtDni" ErrorMessage="*" Font-Size="X-Small" 
                    style="text-align: left"></asp:RequiredFieldValidator>
                <asp:Label ID="lblResultado" runat="server" Width="182px" ForeColor="#0000CC" 
                    Font-Size="Small" style="text-align: left"></asp:Label></th>
          </tr>          
          <tr>
            <th>Tus Nombres</th>
            <th><asp:TextBox ID="txtNombres" runat="server" Width="353px"></asp:TextBox></th>
            <th rowspan="2" style="text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtNombres" ErrorMessage="*" Font-Size="X-Small"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtApellidos" ErrorMessage="*" Font-Size="X-Small"></asp:RequiredFieldValidator>
                <asp:Button ID="btnIniciarSesion" runat="server" 
                    onclick="btnIniciarSesion_Click" Text="Iniciar Sesión" />
              </th>
          </tr>
          <tr>
            <th><label for="apellidos"><small>Tus Apellidos</small></label></th>
            <th><asp:TextBox ID="txtApellidos" runat="server" Width="353px"></asp:TextBox></th>
          </tr>
          <tr>
            <th><label for="direccion"><small>Dirección</small></label></th>
            <th><asp:TextBox ID="txtDireccion" runat="server" Width="354px"></asp:TextBox></th>
            <th style="text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtDireccion" ErrorMessage="*" Font-Size="X-Small"></asp:RequiredFieldValidator>
              </th>
          </tr>
          <tr>            
            <th><label for="telefono"><small>Teléfono</small></label></th>
            <th><asp:TextBox ID="txtTelefono" runat="server" Width="353px"></asp:TextBox></th>
            <th style="text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtTelefono" ErrorMessage="*" Font-Size="X-Small"></asp:RequiredFieldValidator>
              </th>
          </tr>
          <tr>            
            <th><label for="correo"><small>Correo Electrónico</small></label></th>
            <th><asp:TextBox ID="txtCorreo" runat="server" Width="353px"></asp:TextBox></th>
            <th rowspan="2" style="text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtCorreo" ErrorMessage="*" Font-Size="X-Small"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                  ControlToCompare="txtCorreo" ControlToValidate="txtCorreoConfirma" 
                  ErrorMessage="El Correo No Coincide" Font-Bold="True" ForeColor="Red" 
                    Font-Size="Small"></asp:CompareValidator></th>
          </tr>
          <tr>            
            <th><label for="correo"><small>Confirma tu correo</small></label></th>
            <th><asp:TextBox ID="txtCorreoConfirma" runat="server" Width="353px"></asp:TextBox></th>
          </tr>
          <tr>           
            <th><label for="password"><small>Contraseña</small></label></th>
            <th><asp:TextBox ID="txtPassword" runat="server" Width="351px" TextMode="Password" 
                    Height="25px"></asp:TextBox></th>
            <th rowspan="2" style="text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtPassword" ErrorMessage="*" Font-Size="X-Small"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                  ControlToCompare="txtPassword" ControlToValidate="txtPasswordConfirmar" 
                  ErrorMessage="El Password No Coincide" Font-Bold="True" ForeColor="Red" 
                    Font-Size="Small"></asp:CompareValidator></th>
          </tr>
          <tr>           
            <th><label for="confirmar"><small>Confirma tu Contraseña</small></label></th>
            <th><asp:TextBox ID="txtPasswordConfirmar" runat="server" Width="351px" 
                    TextMode="Password" Height="25px"></asp:TextBox></th>
          </tr>
          <tr>
            <th colspan="2"><asp:Button ID="btnRegistrar" runat="server" Text="Registrarme" onclick="BtnRegistrar_Click" /></th>         
            <th>&nbsp;</th>
          </tr>
          </table>
        </form>
        

    <%--Copiar esta parte para que quede centrado--%>
  </section>
    </div>
</div>
    <%--Copiar esta parte para que quede centrado--%>


</asp:Content>
