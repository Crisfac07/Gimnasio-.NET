<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="InicioDeSesion.aspx.cs" Inherits="ProyectoFinal.InicioDeSesion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderPrueba" runat="server">
    <section class="section" id="our-classes">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-heading">
                        <div class="login-form">
                            <section>
                                <h2 class="text-center"><i class="fa fa-user" aria-hidden="true"></i>Usuario </h2>
                                <br /><br />
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <span class="fa fa-user"></span>
                                            </span>
                                        </div>
                                        <asp:TextBox runat="server" ID="txtIniSesUsuario" Width="200px" placeholder="Ingresa tu usuario" CssClass="form-control" Height="30px" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="fa fa-lock" aria-hidden="true"></i>
                                            </span>
                                        </div>
                                        <asp:TextBox runat="server" ID="txtIniSesPass" Width="200px" placeholder="Contraseña" TextMode="Password" CssClass="form-contro" Height="30px" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Button runat="server" ID="IniSesContinuar" Text="Continuar" CssClass="main-button" OnClick="btnIniciar"/>
                                </div>
                            </section>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
