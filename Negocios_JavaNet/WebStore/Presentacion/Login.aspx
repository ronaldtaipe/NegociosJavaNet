<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/webstore.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebStore.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--Copiar esta parte para que quede centrado--%>
<div class="wrapper row2">
 <div id="container" class="clear">
    <!-- content body -->
    <section id="content">
     <%--Copiar esta parte para que quede centrado--%>

   <table>
    <tr>
        <td>Correo</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>

    </tr>
    <tr>
        <td>Password</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>

    </tr>
     <tr>
        <td></td>
        <td>
           
            <asp:Button ID="btnlogin" runat="server" Text="Ingresar" />
            <asp:Button ID="btncanlogin" runat="server" Text="Cancelar" 
                onclick="btncanlogin_Click" />
           
        </td>

    </tr>
   </table>




       <%--Copiar esta parte para que quede centrado--%>
  </section>
    </div>
</div>
    <%--Copiar esta parte para que quede centrado--%>
</asp:Content>
