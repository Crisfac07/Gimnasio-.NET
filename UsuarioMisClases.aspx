<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsuarioMisClases.aspx.cs" Inherits="ProyectoFinal.UsuarioMisClases" MasterPageFile="~/Master/Site2.Master" %>

<asp:Content runat="server" ID="InicioUsuario" ContentPlaceHolderID="ContentPlaceHolderSocio">

     <section class="section" id="our-classes">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-heading">
                        <h2>Clases a las que te has registrado</h2>
                        </div>
                    <asp:label id="Message" forecolor="Red" runat="server" AssociatedControlID="grid"/>

                        <asp:GridView runat="server" CssClass="table table-striped" id="grid" AutoGenerateColumns="false" OnRowCommand="gvTablaUno_RowCommand"> 
                                    <Columns>
                                    <asp:BoundField DataField="id" HeaderText="ID"  />
                                    <asp:BoundField DataField="nombre" HeaderText="Nombre"  />
                                    <asp:BoundField DataField="dia" HeaderText="Dia"  />
                                    <asp:BoundField DataField="hInicio" HeaderText="Inicio"  />
                                    <asp:BoundField DataField="hFin" HeaderText="Fin"  />
                                    
                                    </Columns>    
                            </asp:GridView>
                        <asp:Label runat="server" ID="lblMensaje"></asp:Label>
                        </div>                    
                    </div>
                </div>
            </div>
        </section>
    
</asp:Content>
