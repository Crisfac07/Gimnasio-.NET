<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioUsuario.aspx.cs" Inherits="ProyectoFinal.InicioUsuario"  MasterPageFile="~/Master/Site2.Master"%>

<asp:Content runat="server" ID="InicioUsuario" ContentPlaceHolderID="ContentPlaceHolderSocio">

     <section class="section mb-0" id="our-classes">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-heading">
                       <h2>Bienvenido <em> <asp:Label runat="server" ID="bienvenido"></asp:Label></em>
                         Comienza el día con <a class="logo"> Spartans<em>Club</em></a></h2>
                        </div>
                    </div>
                </div>
            </div>
        </section>
            
            <div class="card-deck">            
                <div class="card" style="width: 18rem;">                              
                    <asp:Image runat="server" ID="Image4" ImageUrl="~/Imagenes/box.jpg" AlternateText="Test" CssClass="card-img-top"/>               
                    <div class="card-body">                    
                        <asp:Label id="Label1" Text="Clases de Box" runat="server" CssClass="card-title"/>                       
                    </div>           
                </div>
               <div class="card" style="width: 18rem;">                              
                    <asp:Image runat="server" ID="Image5" ImageUrl="~/Imagenes/gym.jpg" AlternateText="Test" CssClass="card-img-top"/>               
                    <div class="card-body">                    
                        <asp:Label id="Label3" Text="Gimnasio" CssClass="card-title" runat="server" />                                            
                                       
                    </div>           
                </div>
                <div class="card" style="width: 18rem;">                              
                    <asp:Image runat="server" ID="Image6" ImageUrl="~/Imagenes/nat.jpg" AlternateText="Test" CssClass="card-img-top"/>               
                    <div class="card-body">                    
                        <asp:Label id="Label5" Text="Natación" runat="server" CssClass="card-title"/>                    
                        
                                      
                    </div>           
                </div>
            </div>
           </section>
    
</asp:Content>

