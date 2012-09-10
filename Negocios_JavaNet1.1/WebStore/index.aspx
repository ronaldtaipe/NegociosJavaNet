<%@ Page Title="" Language="C#" MasterPageFile="~/webstore.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebStore.index" %>
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

<!-------------------------------------------------- Articulos y Productos --------------------------------------------------------->
    <section class="services clear">
      <article>
        <figure><img src="images/articulos/1.jpg" width="180" height="180" alt=""></figure>
        <strong>NOTEBOOK Core i3 SAMSUNG 300E5Z - Samsung</strong>
        <p>
        procesador Intel Core i3-2350M (2.30 GHz, 3M Cache) , memoria 4 GB ,discoduro 750 GB SATA , óptico DVD Supermulti, WLAN 802.11b/g/n, c.
        <br />de Oferta: Desde 07 Sep, 2012Hasta 09 Sep, 2012
        </p>
        <p class="more"><a href="#">Leer Más &raquo;</a></p>
      </article>
      <article>
        <figure><img src="images/articulos/2.jpg" width="180" height="180" alt=""></figure>
        <strong>Lorum ipsum dolor</strong>
        <p>You can use and modify the template for both personal and commercial use. You must keep all copyright information and credit links in the template and associated files.</p>
        <p class="more"><a href="#">Leer Más &raquo;</a></p>
      </article>
      <article class="last">
        <figure><img src="images/articulos/3.jpg" width="180" height="180" alt=""></figure>
        <strong>Lorum ipsum dolor</strong>
        <p>For more HTML5 templates visit <a href="http://www.os-templates.com/">free website templates</a>. Orciinterdum condimenterdum nullamcorper elit nam curabitur laoreet met praesenean et iaculum.</p>
        <p class="more"><a href="#">Leer Más &raquo;</a></p>
      </article>
      <div class="spacer"></div>
      <article>
        <figure><img src="images/articulos/4.jpg" width="180" height="180" alt=""></figure>
        <strong>Lorum ipsum dolor</strong>
        <p>Orciinterdum condimenterdum nullamcorper elit nam curabitur laoreet met praesenean et iaculum. Metridiculis conseque quis iaculum aenean nunc aenean quis nam nis dui.</p>
        <p class="more"><a href="#">Leer Más &raquo;</a></p>
      </article>
      <article>
        <figure><img src="images/articulos/5.jpg" width="180" height="180" alt=""></figure>
        <strong>Lorum ipsum dolor</strong>
        <p>Orciinterdum condimenterdum nullamcorper elit nam curabitur laoreet met praesenean et iaculum. Metridiculis conseque quis iaculum aenean nunc aenean quis nam nis dui.</p>
        <p class="more"><a href="#">Leer Más &raquo;</a></p>
      </article>
      <article class="last">
        <figure><img src="images/articulos/6.jpg" width="180" height="180" alt=""></figure>
        <strong>Lorum ipsum dolor</strong>
        <p>Orciinterdum condimenterdum nullamcorper elit nam curabitur laoreet met praesenean et iaculum. Metridiculis conseque quis iaculum aenean nunc aenean quis nam nis dui.</p>
        <p class="more"><a href="#">Leer Más &raquo;</a></p>
      </article>
    </section>
<!---------------------------------------------------------------------------------------------------------------------------------->

</asp:Content>
