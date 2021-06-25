<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="ProyectoFinal.Registro2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderPrueba" runat="server">

   <section class="section" id="our-classes">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-heading">
            <h2>Registro</h2>
            <asp:Label runat="server" ID="lbl1" Text=""></asp:Label>
            <br /><br />
            <asp:TextBox runat="server" required="required" ID="txtRegistroNombre" width="400px" placeholder="Nombre(s)"/>
            <br /><br />
            <asp:TextBox runat="server" required="required" ID="txtRegistroPriApe" width="400px" placeholder="Primer apellido"/>
            <br /><br />
            <asp:TextBox runat="server" ID="txtRegistroSegApe" width="400px" placeholder="Segundo apellido"/>
            <br /><br />
            <asp:TextBox runat="server" required="required" ID="txtRegistroCURP" width="400px" placeholder="CURP"/>
            <br /><br />
                        <asp:Label CssClass="text-danger" ID="lbCURP" runat="server" text=""></asp:Label>
            <asp:TextBox runat="server" required="required" ID="txtRegistroEdad" width="400px" placeholder="Edad" TextMode="Number" min="1" max="100" step="1"/>
            <br /><br />
            <asp:TextBox runat="server" required="required" ID="txtRegistroCorreo" width="400px" placeholder="Correo electrónico"/>
            <br /><br />
            <asp:Label CssClass="text-danger" ID="lbCorreo" runat="server" text=""></asp:Label>
            <asp:TextBox runat="server" required="required" ID="txtRegistroUsuario" width="400px" placeholder="Usuario"/>
            <br /><br />
            <asp:Label CssClass="text-danger" ID="lbUsuario" runat="server" text=""></asp:Label>
            <asp:TextBox runat="server" required="required" ID="txtRegistroPass" width="400px" placeholder="Contraseña" TextMode="Password"/>
            <br /><br />
            <asp:TextBox runat="server" required="required" ID="txtRegistroVerPass" width="400px" placeholder="Repetir contraseña" TextMode="Password"/>
            <br />
            <asp:Label CssClass="text-danger" ID="pasword" runat="server" text=""></asp:Label>
            <br />
            <asp:Button runat="server" ID="btnRegistroContinuar" text="Continuar" OnClick="btnRegistroContinuar_Click" Width="400px"/>
            </div>
                    </div>
                </div>
            </div>
        </section>
            
</asp:Content>
