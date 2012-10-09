<%@ Page Title="" Language="C#" MasterPageFile="~/webstore.Master" AutoEventWireup="true" CodeBehind="controles-estilo.aspx.cs" Inherits="WebStore.controles_estilo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



<!-- content -->
<div class="wrapper row2">
  <div id="container" class="clear">
    <!-- content body -->
    <section id="content">
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <section>
        <h1>&lt;h1&gt; to &lt;h6&gt; - Headline Colour and Size Are All The Same</h1>
        <figure class="imgr"><img src="images/demo/imgr.gif" alt="" width="125" height="125"></figure>
        <p>Aliquatjusto quisque nam consequat doloreet vest orna partur scetur portortis nam. Metadipiscing eget facilis elit sagittis felisi eger id justo maurisus convallicitur.</p>
        <p>Dapiensociis <a href="#">temper donec auctortortis cumsan</a> et curabitur condis lorem loborttis leo. Ipsumcommodo libero nunc at in velis tincidunt pellentum tincidunt vel lorem.</p>
        <figure class="imgl"><img src="images/demo/imgl.gif" alt="" width="125" height="125"></figure>
        <p>This is a W3C compliant free website template from <a href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a>. For full terms of use of this template please read our <a href="http://www.os-templates.com/template-terms">website template licence</a>.</p>
        <p>You can use and modify the template for both personal and commercial use. You must keep all copyright information and credit links in the template and associated files. For more HTML5 templates visit <a href="http://www.os-templates.com/">free website templates</a>.</p>
        <p>Portortornec condimenterdum eget consectetuer condis consequam pretium pellus sed mauris enim. Puruselit mauris nulla hendimentesque elit semper nam a sapien urna sempus.</p>
      </section>
      <section>
        <h1>Table(s)</h1>
        <table>
          <thead>
            <tr>
              <th>Header 1</th>
              <th>Header 2</th>
              <th>Header 3</th>
              <th>Header 4</th>
            </tr>
          </thead>
          <tbody>
            <tr class="light">
              <td>Value 1</td>
              <td>Value 2</td>
              <td>Value 3</td>
              <td>Value 4</td>
            </tr>
            <tr class="dark">
              <td>Value 5</td>
              <td>Value 6</td>
              <td>Value 7</td>
              <td>Value 8</td>
            </tr>
            <tr class="light">
              <td>Value 9</td>
              <td>Value 10</td>
              <td>Value 11</td>
              <td>Value 12</td>
            </tr>
            <tr class="dark">
              <td>Value 13</td>
              <td>Value 14</td>
              <td>Value 15</td>
              <td>Value 16</td>
            </tr>
          </tbody>
        </table>
      </section>
      <section id="comments">
        <h2>Comments</h2>
        <ul>
          <li class="comment_odd">
            <article>
              <header>
                <figure><img src="images/demo/avatar.gif" width="32" height="32" alt=""></figure>
                <address>
                By <a href="#">A Name</a>
                </address>
                <time datetime="2000-04-06T08:15+00:00">Friday, 6<sup>th</sup> April 2000 @08:15:00</time>
              </header>
              <section>
                <p>This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.</p>
              </section>
            </article>
          </li>
          <li class="comment_even">
            <article>
              <header>
                <figure><img src="images/demo/avatar.gif" width="32" height="32" alt=""></figure>
                <address>
                By <a href="#">A Name</a>
                </address>
                <time datetime="2000-04-06T08:15+00:00">Friday, 6<sup>th</sup> April 2000 @08:15:00</time>
              </header>
              <section>
                <p>This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.</p>
              </section>
            </article>
          </li>
          <li class="comment_odd">
            <article>
              <header>
                <figure><img src="images/demo/avatar.gif" width="32" height="32" alt=""></figure>
                <address>
                By <a href="#">A Name</a>
                </address>
                <time datetime="2000-04-06T08:15+00:00">Friday, 6<sup>th</sup> April 2000 @08:15:00</time>
              </header>
              <section>
                <p>This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.</p>
              </section>
            </article>
          </li>
        </ul>
        <h2>Write A Comment</h2>
        <form action="#" method="post">
          <p>
            <input type="text" name="name" id="name" value="" size="22">
            <label for="name"><small>Name (required)</small></label>
          </p>
          <p>
            <input type="text" name="email" id="email" value="" size="22">
            <label for="email"><small>Mail (required)</small></label>
          </p>
          <p>
            <textarea name="comment" id="comment" cols="25" rows="10"></textarea>
            <label for="comment" class="hidden"><small>Comment (required)</small></label>
          </p>
          <p>
            <input name="submit" type="submit" id="submit" value="Submit Form">
            &nbsp;
            <input name="reset" type="reset" id="reset" value="Reset Form">
          </p>
        </form>
      </section>
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
    </section>
    <!-- right column -->
    <aside id="right_column">
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <h2>Site Navigation</h2>
      <nav>
        <ul>
          <li><a href="#">Free Website Templates</a></li>
          <li><a href="#">Free CSS Templates</a>
            <ul>
              <li><a href="#">Free XHTML Templates</a></li>
              <li><a href="#">Free Web Templates</a></li>
            </ul>
          </li>
          <li><a href="#">Free Website Layouts</a>
            <ul>
              <li><a href="#">Free HTML 5 Templates</a></li>
              <li><a href="#">Free Webdesign Templates</a>
                <ul>
                  <li><a href="#">Free FireWorks Templates</a></li>
                  <li><a href="#">Free PNG Templates</a></li>
                </ul>
              </li>
            </ul>
          </li>
          <li><a href="#">Free Website Themes</a></li>
        </ul>
      </nav>
      <!-- /nav -->
      <section>
        <h2>Get In Contact</h2>
        <address>
        Full Name<br>
        Address Line 1<br>
        Address Line 2<br>
        Town/City<br>
        Postcode/Zip<br>
        <br>
        Tel: xxxx xxxx xxxxxx<br>
        Email: <a href="#">contact@domain.com</a>
        </address>
      </section>
      <!-- /section -->
      <section>
        <article>
          <h2>Lorem ipsum dolor</h2>
          <p>Nuncsed sed conseque a at quismodo tris mauristibus sed habiturpiscinia sed.</p>
          <ul>
            <li><a href="#">Lorem ipsum dolor sit</a></li>
            <li>Etiam vel sapien et</li>
            <li><a href="#">Etiam vel sapien et</a></li>
          </ul>
          <p>Nuncsed sed conseque a at quismodo tris mauristibus sed habiturpiscinia sed. Condimentumsantincidunt dui mattis magna intesque purus orci augue lor nibh.</p>
          <p class="more"><a href="#">Continue Reading &raquo;</a></p>
        </article>
      </section>
      <!-- /section -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
    </aside>
    <!-- / content body -->
  </div>
</div>



</asp:Content>
