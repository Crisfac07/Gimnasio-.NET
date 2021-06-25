<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsuarioModificar.aspx.cs" Inherits="ProyectoFinal.UsuarioModificar" MasterPageFile="~/Master/Site2.Master" %>

<asp:Content runat="server" ID="ModificarUsuario" ContentPlaceHolderID="ContentPlaceHolderSocio">

     <section class="section" id="our-classes">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-heading">
            <h2>Mi información</h2>
            <asp:Label runat="server" ID="lbl1" Text=""></asp:Label>
            <br /><br />
            <asp:TextBox runat="server" required="required" ID="txtEditarNombre" width="400px" placeholder="Nombre(s)"/>
            <br /><br />
            <asp:TextBox runat="server" required="required" ID="txtEditarPriApe" width="400px" placeholder="Primer apellido"/>
            <br /><br />
            <asp:TextBox runat="server" ID="txtEditarSApe" width="400px" placeholder="Segundo apellido"/>
            <br /><br />
            <asp:TextBox runat="server" required="required" ID="txtEditarCURP" width="400px" placeholder="CURP"/>
            <br /><br />
            <asp:TextBox runat="server" required="required" ID="txtEditarEdad" width="400px" placeholder="Edad" TextMode="Number" min="1" max="100" step="1"/>
            <br /><br />
            <asp:TextBox runat="server" required="required" ID="txtEditarCorreo" width="400px" placeholder="Correo electrónico"/>
            <br /><br />

            <asp:Button runat="server"  ID="btnRegistroContinuar" text="Continuar" OnClick="btnRegistroContinuar_Click" Width="400px"/>
            </div>
                    </div>
                </div>
            </div>
        </section>
    
</asp:Content>
