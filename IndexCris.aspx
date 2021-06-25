<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="IndexCris.aspx.cs" Inherits="ProyectoFinal.Index" %>

<asp:Content runat="server" ID="MainContentDefault1" ContentPlaceHolderID="contentPlaceHolder">
        <div>
            <h1>Index</h1>
                    <div class="container">
            <div class="row mt-2">
                <div class="col-sm-12">
                      <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <asp:Image runat="server" ID="Image1" ImageUrl="~/Imagenes/natacion.jpg" AlternateText="Test" CssClass="d-block w-100" Width="320px" Height="290px"/>
                                </div>
                                <div class="carousel-item">
                                    <asp:Image runat="server" ID="Image2" ImageUrl="~/Imagenes/gym.jpg" AlternateText="Test" CssClass="d-block w-100" Width="320px" Height="290px"/>
                                </div>
                                <div class="carousel-item">
                                    <asp:Image runat="server" ID="Image3" ImageUrl="~/Imagenes/baile.jpg" AlternateText="Test" CssClass="d-block w-100" Width="320px" Height="290px"/>
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                       </div>
                </div>
            </div>
        </div>
                        
            <hr />
            <h1>¡Recibe todas nuestras promociones!</h1>
            <hr />            
        
            <section class="container">
            <div class="card-deck">            
                <div class="card" style="width: 18rem;">                              
                    <asp:Image runat="server" ID="Image4" ImageUrl="~/Imagenes/baile.jpg" AlternateText="Test" CssClass="card-img-top"/>               
                    <div class="card-body">                    
                        <asp:Label id="Label1" Text="Título del artículo" runat="server" CssClass="card-title"/>                    
                        <asp:Label id="Label2" Text="Descripción del articulo..." runat="server" CssClass="card-text"/> 
                        <asp:LinkButton runat="server" ID="lnkb1" OnClick="lnkArticulo" Text="Ir al artículo" CssClass="btn btn-primary"/>                
                    </div>           
                </div>

               <div class="card" style="width: 18rem;">                              
                    <asp:Image runat="server" ID="Image5" ImageUrl="~/Imagenes/gym.jpg" AlternateText="Test" CssClass="card-img-top"/>               
                    <div class="card-body">                    
                        <asp:Label id="Label3" Text="Título del artículo" CssClass="card-title" runat="server" />                    
                        <asp:Label id="Label4" Text="Descripción del articulo..." runat="server" CssClass="card-text"/> 
                        <asp:LinkButton runat="server" ID="LinkButton1" OnClick="lnkArticulo" Text="Ir al artículo" CssClass="btn btn-primary"/>                
                    </div>           
                </div>
                <div class="card" style="width: 18rem;">                              
                    <asp:Image runat="server" ID="Image6" ImageUrl="~/Imagenes/baile.jpg" AlternateText="Test" CssClass="card-img-top"/>               
                    <div class="card-body">                    
                        <asp:Label id="Label5" Text="Título del artículo" runat="server" CssClass="card-title"/>                    
                        <asp:Label id="Label6" Text="Descripción del articulo..." runat="server" CssClass="card-text"/> 
                        <asp:LinkButton runat="server" ID="LinkButton2" OnClick="lnkArticulo" Text="Ir al artículo" CssClass="btn btn-primary"/>                
                    </div>           
                </div>
            </div>
           </section>

        </div>

</asp:Content>