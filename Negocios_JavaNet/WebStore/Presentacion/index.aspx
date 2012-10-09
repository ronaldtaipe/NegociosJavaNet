<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/webstore.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebStore.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!--------------------------------------------------- Slider de Imagenes ----------------------------------------------------------->
    <div class="wrapper row2">
      <div id="container" class="clear">
        <!-- content body -->
        <section id="slides">
          <div id="controls">
            <!-- Controls -->
            <a href="#" class="prev"><img src="images/slider/arrow-prev.png" alt="Previous"></a> <a href="#" class="next"><img src="images/slider/arrow-next.png" alt="Next"></a>
            <!-- Frame -->
            <img src="images/slider/frame.png" alt="" id="frame">
            <!-- / Frame -->
            <div class="slidescontainer">
              <figure class="slide"><a href="#"><img src="images/slider/principal/1.jpg" width="940" height="360" alt=""></a>
                <!--<figcaption class="caption">
                  <h2>Negocios JavaNet</h2>
                  <p>Sientete tranquilo cuando compres en nuestra tienda en línea</p>
                </figcaption>-->
              </figure>
              <figure class="slide"><a href="#"><img src="images/slider/principal/2.jpg" width="940" height="360" alt=""></a>
              </figure>
              <figure class="slide"><a href="#"><img src="images/slider/principal/3.jpg" width="940" height="360" alt=""></a>
              </figure>
              <figure class="slide"><a href="#"><img src="images/slider/principal/4.jpg" width="940" height="360" alt=""></a>
              </figure>
              <figure class="slide"><a href="#"><img src="images/slider/principal/5.jpg" width="940" height="360" alt=""></a>
              </figure>
              <figure class="slide"><a href="#"><img src="images/slider/principal/6.jpg" width="940" height="360" alt=""></a>
              </figure>
              <!-- / Slide Container -->
            </div>
            <!-- / Controls -->
          </div>
        </section>
      <//div>
    <//div>
<!---------------------------------------------------------------------------------------------------------------------------------->
<!-------------------------------------------------- Texto - Descripción --------------------------------------------------------->
<!-- content -->
<div class="wrapper row2">
  <div id="Div2" class="clear">
    <!-- content body -->
    <section id="content">
      <!-- ########################################################################################## -->
      <section>
        <h1>Una Compañia que trabaja para crear la mejor experiencia <br />de compra online en Perú</h1>        
        <figure class="imgr"><img src="images/index/webstore-01.jpg" alt="" width="150" height="150"></figure>
        Desde la creación de nuestra compañía en el año Septiembre 2012, JavaNet, trabaja incansablemente para brindar la mejor experiencia de comercio electrónico en Perú. Ofrecemos a los consumidores un mercado virtual con acceso a la oferta de la gran, pequeña, mediana y micro empresa, todo en un solo lugar. Nuestros valores de innovación y excelencia son la guía para enfocarnos en el cliente - tanto compradores como empresarios - y potenciar de esta manera las oportunidades de negocio en nuestra región.
        <br />
        <h1>Equipo JavaNet - Talento y compromiso a tu servicio.</h1>
        <p>JavaNet, tiene el objetivo de brindarte una experiencia de compra segura, sencilla y conveniente. Para lograrlo, contamos con un equipo multidisciplinario de profesionales con experiencia en tecnología y en diversas disciplinas comerciales. Todas las áreas de nuestra empresa están comprometidas con la calidad del servicio que te brindamos. Si deseas ponerte en contacto con nuestro equipo de atención al cliente, visita el Centro de Ayuda.</p>
        <figure class="imgl"><img src="images/index/webstore-02.jpg" alt="" width="180" height="150"></figure>
        <p><strong>Libro de Reclamaciones</strong><br /><br />
        Ley N°29571 Código de Protección y Defensa del Consumidor.
        <a href="#" title="Free Website Templates">Leer más</a>.<br /><br />
        <strong>Métodos de pago Aceptados</strong> <br /><br />
        <img src="images/metodopago/mp_bcp.gif" alt/><img src="images/metodopago/mp_mastercard2.gif" alt/><img src="images/metodopago/mp_mibanco.gif" alt/><img src="images/metodopago/mp_visa2.gif" alt/>
        <br />
        <br />
        <strong>Siguenos en</strong><br />
        <img src="images/social-sprite.gif" alt="Alternate Text" />
        <a href="#">Leer más</a>.</p>
        

      </section>
      <!-- ########################################################################################## -->
    </section>
    <!-- right column -->
    <aside id="right_column">
      <!-- ########################################################################################## -->
      <h2>Mapa del Sitio</h2>
      <nav>
        <ul>
          <li><a href="#">Tu Cuenta</a>
            <ul>
              <li><a href="RegistrarCliente.aspx">Registrate</a></li>
              <li><a href="Login.aspx">Iniciar Sesión</a></li>
              <li><a href="#">Recuperar Contraseña</a></li>
              <li><a href="#">Configuración de Cuenta</a></li>
              <li><a href="#">Tus Compras</a></li>
            </ul>
          </li>
          <li><a href="#">Centro de Ayuda</a>
            <ul>
              <li><a href="#">Ayuda al Comprador</a></li>
              <li><a href="#">Ayuda al Vendedor</a></li>
              <li><a href="#">Central de Reclamos</a></li>
            </ul>
          </li>
        </ul>
      </nav>
      <!-- /nav -->
      <section>
        <h2>Contáctanos</h2>
        <address>
        <br>
        Prolongación Primavera 2390<br>
        Monterrico<br>
        Tel: (+511) 313-3333 | Fax: 313-3344<br>
        Email: <a href="#">helpdesk@javanet.pe</a>
        </address>
      </section>
      <!-- /section -->
      <!-- ########################################################################################## -->
    </aside>
    <!-- / content body -->
  </div>
</div>
<!---------------------------------------------------------------------------------------------------------------------------------->

</asp:Content>
