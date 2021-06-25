<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="IniciarSesionCris.aspx.cs" Inherits="ProyectoFinal.IniciarSesion" %>

<asp:Content runat="server" ID="MainContentDefault4" ContentPlaceHolderID="contentPlaceHolder">

    <div class="login-form">
    <section>
        <h2 class="text-center"><i class="fa fa-user" aria-hidden="true"></i> Usuario </h2>   
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text">
                        <span class="fa fa-user"></span>
                    </span>                    
                </div>
       
                <asp:TextBox runat="server" ID="txtIniSesUsuario" width="200px" placeholder="Ingresa tu usuario" CssClass="form-control"/>
            </div>
            </div>
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text">
                        <i class="fa fa-lock" aria-hidden="true"></i>
                    </span>                    
                </div>
                <asp:TextBox runat="server" ID="txtIniSesPass" width="200px" placeholder="Contraseña" TextMode="Password" CssClass="form-contro"/>             
            </div>
        </div>
        <div class="form-group">
            <asp:Button runat="server" ID="IniSesContinuar" text="Continuar" CssClass="main-rounded-button" />
        </div>
    </section>
    </div>
</asp:Content>