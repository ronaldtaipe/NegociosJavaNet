<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/webstore.Master" AutoEventWireup="true" CodeBehind="PagoProducto.aspx.cs" Inherits="WebStore.Presentacion.PagoProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<%--Copiar esta parte para que quede centrado--%>
<div class="wrapper row2">
 <div id="container" class="clear">    
    <section id="content">
    <!-- content body -->
    <table>
    <tr>
    <td>
        <article>
            <p class="more"><strong>Datos del Cliente</strong></p>
            <p><a href="#">DNI</a>
            <asp:TextBox ID="txtDniCliente" runat="server" Width="131px"></asp:TextBox>
                <asp:Button ID="btnBuscaCliente" runat="server" Text="::::"  
                    style="text-align: left" Font-Size="Small" onclick="btnBuscaCliente_Click"></asp:Button>
            <p><a href="#">Apellidos</a>
            <asp:Label ID="lblApellidos" runat="server" Text="" Height="25px" Width="250px" style="text-align: left" Font-Size="Small"></asp:Label>
            </p>
            <p><a href="#">Nombres</a>
            <asp:Label ID="lblNombres" runat="server" Text="" Height="25px" Width="250px" style="text-align: left" Font-Size="Small"></asp:Label>
            </p>
            </p>
            <p><a href="#">Dirección</a>
            <asp:Label ID="lblDireccion" runat="server" Text="" Height="40px" Width="250px" style="text-align: left" Font-Size="Small"></asp:Label>
            </p>
            <p>
            <asp:Label ID="lblResultado" runat="server" Width="182px" ForeColor="#0000CC" Font-Size="Small" style="text-align: left"></asp:Label>
            </p>
            <p>
        </article>
    </td>    
    <td>
        <article>
            <p class="more"><strong>Información de Facturación</strong></p>
            <p><a href="#">Solicita:</a><br />          
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" CellPadding="0" 
            CellSpacing="0" RepeatLayout="Flow">
                <asp:ListItem Value="1">Factura</asp:ListItem>
                <asp:ListItem Value="2">Boleta</asp:ListItem>
        </asp:RadioButtonList>

            </p>
            <p><a href="#">Apellidos y Nombres</a>
            <asp:Label ID="lblApellidosNombresFactura" runat="server" Height="25px" 
                    Width="250px" style="text-align: left" Font-Size="Small"></asp:Label>
            </p>
            <p><a href="#">DNI</a> 
            <asp:Label ID="lblDniFactura" runat="server" Text="" Height="25px" Width="250px" style="text-align: left" Font-Size="Small"></asp:Label>
            </p>
            <p><a href="#">Dirección de Envío</a>
            <asp:TextBox ID="txtDireccionFactura" runat="server" Height="40px" Width="250px" 
                    style="text-align: left" Font-Size="Small" TextMode="MultiLine"></asp:TextBox>
            </p>
            <p>
            <a href="#">Teléfono de Contacto</a> 
            <asp:Label ID="lblTelefonoFactura" runat="server" Text="" Height="25px" Width="240px" style="text-align: left" Font-Size="Small"></asp:Label>
            </p>
        </article>
      </td>
      <td>
        <article>
            <p><strong>Método de Pago</strong></p>
            <p>
                <a href="#">Eligió :</a>
                <asp:Label ID="lblFormaPago" runat="server" Text="Tarjetas de Crédito" Height="25px" Width="187px" style="text-align: left" Font-Size="Small"></asp:Label>
                <asp:Label ID="lblFOrmaPagoOpcion" runat="server" Text="VISA" Height="25px" Width="187px" style="text-align: left" Font-Size="Small"></asp:Label>
            </p>
            <p>
            <strong>Tarjetas de Crédito</strong>
                <asp:RadioButtonList ID="rbtnTarjetasDeCredito" runat="server" CellPadding="0" CellSpacing="0" Height="43px" RepeatLayout="Flow" Width="140px">
                    <asp:ListItem Value="1">Visa</asp:ListItem>
                    <asp:ListItem Value="2">Mastercard</asp:ListItem>
                </asp:RadioButtonList>  
            </p>
<!--            <p>
            <strong>Pago En Línea</strong>
                <asp:RadioButtonList ID="rbtnPagoEnlinea" runat="server" CellPadding="0" CellSpacing="0" Height="43px" RepeatLayout="Flow" Width="140px">
                    <asp:ListItem Value="3">Productos Mi Banco</asp:ListItem>
                </asp:RadioButtonList>  
            </p>
            <p>
            <strong>Depósito En Banco</strong>
                <asp:RadioButtonList ID="rbtnDepositoEnBanco" runat="server" CellPadding="0" CellSpacing="0" Height="43px" RepeatLayout="Flow" Width="140px">
                    <asp:ListItem Value="4">Banco BBVA</asp:ListItem>
                    <asp:ListItem Value="5">Banco BCP</asp:ListItem>
                </asp:RadioButtonList>  
            </p> -->
        </article>
      </td>
      <td>
        <article>
            <p class="more"><strong>Resumen de la Compra</strong></p>
            <strong>Sub-Total: </strong><asp:Label ID="Label9" runat="server" 
              Text="49.00" Height="25px" Width="187px" style="text-align: left" 
              Font-Size="Small"></asp:Label><br />
            <strong>Envío: </strong><asp:Label ID="Label14" runat="server" Text="15.00" 
              Height="25px" Width="187px" style="text-align: left" Font-Size="Small"></asp:Label><br /><br />
            <strong>Total: </strong><a><asp:Label ID="Label10" runat="server" 
              Text="64.00" Height="25px" Width="187px" style="text-align: left" 
              Font-Size="Small"></asp:Label></a><br />
            <asp:CheckBox ID="chboxAceptaTerminos" runat="server" Font-Size="X-Small" Text="  Acepto Terminos de Compra"></asp:CheckBox>
            <br /><br />
            <asp:Button ID="btnRegistrar" runat="server" Text="Proceder con el Pago" 
              onclick="btnRegistrar_Click" Enabled="False" />
            <br />
            <asp:TextBox ID="txtMuestra" runat="server" Height="150px" TextMode="MultiLine" Width="180px" ForeColor="#CC3300" Font-Bold="True" Font-Size="XX-Small"></asp:TextBox>
        </article>
      </td>
    </tr>
    </table>
    <!-- Final content body -->
    </section>
    </div>
</div>

</asp:Content>
