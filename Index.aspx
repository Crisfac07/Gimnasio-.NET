<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ProyectoFinal.WebForm1" %>

<asp:Content runat="server" ID="MainContentDefault" ContentPlaceHolderID="contentPlaceHolderPrueba">
         <!-- ***** Our Classes Start ***** -->
    <section class="section" id="our-classes">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-heading">
                        <h2>¿Qué hacer para formar parte de <a class="logo"> Spartans<em>Club</em></a>?</h2>
                        <img src="assets/images/line-dec.png" alt="">
                        <p>Solo tienes que seguir los sencillos pasos que se muestran a continuación.</p>
                    </div>
                </div>
            </div>
            <div class="row" id="tabs">
              <div class="col-lg-4">
                <ul>
                  <li><a href='#tabs-1'><img src="assets/images/tabs-first-icon.png" alt="">Paso 1</a></li>
                  <li><a href='#tabs-2'><img src="assets/images/tabs-first-icon.png" alt="">Paso 2</a></li>
                  <li><a href='#tabs-3'><img src="assets/images/tabs-first-icon.png" alt="">Paso 3</a></li>
                  <li><a href='#tabs-4'><img src="assets/images/tabs-first-icon.png" alt="">Paso 4</a></li>
                  <div class="main-rounded-button"><a href="Registro.aspx">Registrate</a></div>
                </ul>
              </div>
              <div class="col-lg-8">
                <section class='tabs-content'>
                  <article id='tabs-1'>
                    <img src="assets/images/training-image-01.jpg" alt="First Class">
                    <h4>Primer paso</h4>
                    <p>El primer paso para poder inscribirte al gimnasio es accesar a nuestro sitio web. Dentro de la página, tienes que entrar a la sección de <a href="Registro.aspx">Registro</a>.</p>
                  </article>
                  <article id='tabs-2'>
                    <img src="assets/images/training-image-02.jpg" alt="Second Training">
                    <h4>Segundo paso</h4>
                    <p>Una vez dentro de la sección de <a href="Registro.aspx">Registro</a>, tienes que llenar el formulario con tus datos personales.</p>
                    <p>Nota: es importante que tengas los siguientes datos a la mano para que agilices tu registro: Nombre completo de la persona que desea inscribirse, su edad, su CURP y un correo de contacto. </p>
                  </article>
                  <article id='tabs-3'>
                    <img src="assets/images/training-image-03.jpg" alt="Third Class">
                    <h4>Tercer paso</h4>
                    <p>Una vez que hayas llenado tu respectivo registro, el siguiente paso es ingresar a <a href="InicioDeSesion.aspx">nuestra plataforma</a> con el usuario y contraseña que creaste al momento de registrarte. Una vez dentro, tienes que seleccionar las clases que sean de tu agrado ya sea por el horario o por el instructor que la imparte. Te recordamos que en cualquier momento te puedes dar de baja de una clase que no te guste o a la que no puedas asistir.</p>
                  </article>
                  <article id='tabs-4'>
                    <img src="assets/images/training-image-04.jpg" alt="Fourth Training">
                    <h4>Cuarto Paso</h4>
                    <p>El último paso para poder disfrutar de los beneficios de Spartans Club es ir a los entrenamientos. Cumple con los horarios a los que te inscribiste y disfruta de ser beneficiario online de nuestra membresía. </p>
                    <h6> Recuerda que: si no te reta, ¡no te cambia! No dudes en formar parte de nosotros.</h6>
                  </article>
                </section>
              </div>
            </div>
        </div>
    </section>
    <!-- ***** Our Classes End ***** -->





</asp:Content>