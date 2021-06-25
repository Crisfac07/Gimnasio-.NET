<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistroCris.aspx.cs" Inherits="ProyectoFinal.Registro" %>

<asp:Content runat="server" ID="MainContentDefault3" ContentPlaceHolderID="contentPlaceHolderPrueba">
    <formview>
    <div>
            <h1>Registro</h1>
            <asp:Label runat="server" ID="lbl1" Text=""></asp:Label>
            <asp:TextBox runat="server" ID="txtRegistroNombre" width="200px" placeholder="Nombre(s)"/>
            <br />
            <asp:TextBox runat="server" ID="txtRegistroPriApe" width="200px" placeholder="Primer apellido"/>
            <br />
            <asp:TextBox runat="server" ID="txtRegistroSegApe" width="200px" placeholder="Segundo apellido"/>
            <br />
            <asp:TextBox runat="server" ID="txtRegistroCURP" width="200px" placeholder="CURP"/>
            <br />
            <asp:TextBox runat="server" ID="txtRegistroEdad" width="200px" placeholder="Edad" TextMode="Number" min="1" max="100" step="1"/>
            <br />
            <asp:TextBox runat="server" ID="txtRegistroCorreo" width="200px" placeholder="Correo electrónico"/>
            <br />
            <asp:TextBox runat="server" ID="txtRegistroUsuario" width="200px" placeholder="Usuario"/>
            <br />
            <asp:TextBox runat="server" ID="txtRegistroPass" width="200px" placeholder="Contraseña" TextMode="Password"/>
            <br />
            <asp:TextBox runat="server" ID="txtRegistroVerPass" width="200px" placeholder="Repetir contraseña" TextMode="Password"/>
            <br />
            <asp:Button runat="server" ID="btnRegistroContinuar" text="Continuar" OnClick="btnRegistroContinuar_Click" />
            
        </div>
        </formview>    
</asp:Content>
