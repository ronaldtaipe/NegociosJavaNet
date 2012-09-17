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

    <table border="0" id="tblregistrar">
    <tr>
        <td>Nombres:</td>
        <td class="style1"><asp:TextBox ID="txtnombres" runat="server" Width="358px"></asp:TextBox></td>
    </tr>

    <tr>
        <td>Apellidos</td>
        <td class="style1"><asp:TextBox ID="txtapellidos" runat="server" Width="353px"></asp:TextBox></td>
    </tr>

    <tr>
        <td>Dirección:</td>
        <td class="style1"><asp:TextBox ID="txtdireccion" runat="server" Width="354px"></asp:TextBox></td>
    </tr>
    <tr>
        <td>Teléfono:</td>
        <td class="style1"><asp:TextBox ID="txttelefono" runat="server" Width="353px"></asp:TextBox></td>
    </tr>

    <tr>
        <td>Correo:</td>
        <td class="style1"><asp:TextBox ID="txtcorreo" runat="server" Width="353px"></asp:TextBox></td>
    </tr>

    <tr>
        <td>Password:</td>
        <td class="style1"><asp:TextBox ID="txtpwd" runat="server" Width="351px" 
                TextMode="Password"></asp:TextBox></td>
    </tr>

    <tr>
        <td>Confirmar:</td>
        <td class="style1"><asp:TextBox ID="txtpwdconfir" runat="server" Width="351px" 
                TextMode="Password"></asp:TextBox></td>
    </tr>
    <tr>
        <td></td>
        <td><asp:Button ID="BtnRegistrar" runat="server" Text="Registrarme" />
            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" />
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtpwd" ControlToValidate="txtpwdconfir" 
                ErrorMessage="El password no coincide"></asp:CompareValidator>
        </td>
    </tr>
    </table>   

    <%--Copiar esta parte para que quede centrado--%>
  </section>
    </div>
</div>
    <%--Copiar esta parte para que quede centrado--%>


</asp:Content>
