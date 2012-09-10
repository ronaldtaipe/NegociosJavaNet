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
        <figure><img src="images/articulos/1.jpg" width="160" height="160" alt=""></figure>
        <strong>NOTEBOOK Core i3 SAMSUNG 300E5Z - Samsung</strong>
        <p>
        procesador Intel Core i3-2350M (2.30 GHz, 3M Cache) , memoria 4 GB ,discoduro 750 GB SATA , óptico DVD Supermulti, WLAN 802.11b/g/n, c.
        <br /><strong>S/. 1,948.00</strong>
        </p>
        <p class="more"><a href="#">Leer Más &raquo;</a></p>
      </article>
      <article>
        <figure><img src="images/articulos/2.jpg" width="160" height="160" alt=""></figure>
        <strong>MEMORIA USB MODELO ANGRY BIRD</strong>
        <p>MEMORIA USB 8GB - MODELO ANGRY BIRD, MANO MICKEY MOUSE, GUITARRA, LEGO, CAMARA, PATRICIO. <br /> <strong> S/. 49.00 </strong> </p>
        <p class="more"><a href="#">Leer Más &raquo;</a></p>
      </article>
      <article class="last">
        <figure><img src="images/articulos/3.jpg" width="160" height="160" alt=""></figure>
        <strong>Tablet 7 pulgadas Flastar TP714A Android 4.0.3 ICS</strong>
        <p>Tablet de 7 pulgadas WVGA, Android 4.0.3 ICS, procesador Cortex A8 1.2GHz, GPU Mali 400MP, 512 RAM, 8GB memoria interna, cámara frontal videollamadas y HDMI.<br /> <strong>S/. 549.90</strong> </p>
        <p class="more"><a href="#">Leer Más &raquo;</a></p>
      </article>
      <div class="spacer"></div>
      <article>
        <figure><img src="images/articulos/4.jpg" width="160" height="160" alt=""></figure>
        <strong>Super Parlante Lotus !! Mas De 5000 Watts</strong>
        <p>PARLANTE MICRONICS MIC 9830 LOTUS 2.1 230 RMS USB/SD/FM MAS DE 5000 WATTS DE SALIDA <br /> <strong> S/. 400.00 </strong></p>
        <p class="more"><a href="#">Leer Más &raquo;</a></p>
      </article>
      <article>
        <figure><img src="images/articulos/5.jpg" width="160" height="160" alt=""></figure>
        <strong>TABLERO GENIUS EASYPEN M610X 6"X10" </strong>
        <p>TABLERO GENIUS EASYPEN M610X 6"X10" SLIM BLACK ITELSISTEM.<br /> <strong> S/. 320.00 </strong></p>
        <p class="more"><a href="#">Leer Más &raquo;</a></p>
      </article>
      <article class="last">
        <figure><img src="images/articulos/6.jpg" width="160" height="160" alt=""></figure>
        <strong>Apple iMac 27.0" 2.7GHz Quad-Core i5</strong>
        <p>Apple iMac 27.0" 2.7GHz Quad-Core i5/4GB/1TB/AMD Radeon 6770M 512MB/TB/SD<br /> <strong> S/. 6,299.00 </strong></p>
        <p class="more"><a href="#">Leer Más &raquo;</a></p>
      </article>
    </section>
<!---------------------------------------------------------------------------------------------------------------------------------->

</asp:Content>
