<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministradorClases.aspx.cs" Inherits="ProyectoFinal.AdministradorClases" MasterPageFile="~/Master/Site3.Master" %>

<asp:Content runat="server" ID="ModificarClases" ContentPlaceHolderID="ContentPlaceHolderAdmin">


     <section class="section" id="our-classes">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 offset-lg-3">
                    <div class="section-heading">
                         
                        
                 
                        <asp:GridView runat="server" CssClass="table table-striped table-bordered table-hover" id="grid"  AutoGenerateColumns="false" DataKeyNames="id"  OnRowCancelingEdit="rowCancelEditEvent" OnRowEditing="rowEditingEvent" OnRowUpdating="rowUpdatingEvent"  OnRowDeleting="rowDeletingEvent"> 
                                    <Columns>
                                        <asp:TemplateField HeaderText="ID">
                                            <ItemTemplate>
                                                <asp:Label ID="label1" runat="server" Text='<% # Bind("id") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ReadOnly="true" CssClass="form-control" ID="txtId" runat="server" Text='<% # Bind("id") %>' ></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Nombre de la Clase">
                                            <ItemTemplate>
                                                <asp:Label ID="label2" runat="server" Text='<% # Bind("nombre") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox CssClass="form-control" ID="txtNombre" runat="server" Text='<% # Bind("nombre") %>' ></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Día">
                                            <ItemTemplate>
                                                <asp:Label ID="label3" runat="server" Text='<% # Bind("Dia") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox CssClass="form-control" ID="txtDia" runat="server" Text='<% # Bind("Dia") %>' ></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Hora de Inicio">
                                            <ItemTemplate>
                                                <asp:Label ID="label4" runat="server" Text='<% # Bind("hInicio") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox CssClass="form-control" ID="txtInicio" runat="server" Text='<% # Bind("hInicio") %>' ></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Hora de Fin">
                                            <ItemTemplate>
                                                <asp:Label ID="label5" runat="server" Text='<% # Bind("hFin") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                
                                                    <asp:TextBox CssClass="form-control" ID="txtFin" runat="server" Text='<% # Bind("hFin") %>' ></asp:TextBox>
                                              
                                          </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:CommandField ButtonType="Link" ShowDeleteButton="true" ShowEditButton="true" />
           
                                    </Columns>    
                            </asp:GridView>

                 


                                <!-- Button trigger modal -->
                                    <button type="button" class="btn btn-dark" data-toggle="modal" data-target="#registrar">
                                        Registrar Clase
                                     </button>
                        </div> 
                    </div>
                </div>
            </div>
        </section>

    <!--Modal para registro de clase-->
    <div class="modal fade" id="registrar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modeal-sm" role="document">
        <div class="modal-content">
      <div class="modal-header">
      	<h4 class="modal-title" id="myModalLabel" align="center">Registra una nueva clase</h4>
        <button  type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
        	<label>Día</label>
          <asp:TextBox runat="server" required="required" ID="txtRegistroDia" width="200px" placeholder="Lunes" CssClass="form-control input-sm" />
       
          <div class="error" id="error1" style="color:#C0392B"></div>
        	<label>Clase</label>
        	<asp:TextBox runat="server" required="required" ID="txtRegistroClase" width="200px" placeholder="Natación" CssClass="form-control input-sm"/>
          <div class="error" id="error2" style="color:#C0392B"></div>
        	<label>Hora de inicio de la clase</label>
        	<asp:TextBox runat="server" required="required" ID="txtHoraI" width="200px" placeholder="13:00" CssClass="form-control input-sm"/>
          <div class="error" id="error3" style="color:#C0392B"></div>
          <label>Hora del fin de la clase</label>
          <asp:TextBox runat="server" required="required" ID="txtHoraF" width="200px" placeholder="14:00" CssClass="form-control input-sm"/>
          <div class="error" id="error4" style="color:#C0392B"></div>
      </div>
      <div class="modal-footer">
          <asp:Button runat="server" ID="AgregarClase" text="Continuar" CssClass="main-rounded-button btn btn-dark" OnClick="BtnRegistrar"/>
      </div>
    </div>
  </div>
</div>

    <!--modal para actualizar datos-->

    <div class="modal fade" id="editar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
      	<h4 class="modal-title" id="myModal" align="center">Edita la clase</h4>
        <button  type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
          <input type="text" hidden="" id="idclase" name="">
       
        	<input type="text" hidden="" name="" id="edia" class="form-control input-sm">
        	<label>Clase</label>
        	<input type="text" name="" id="eclase" class="form-control input-sm">
        	<label>Hora de inicio de la clase</label>
          <input type="text" name="" id="ehorarioi" class="form-control input-sm">
          <label>Hora del fin de la clase</label>
          <input type="text" name="" id="ehorariof" class="form-control input-sm">


          <input type="text" hidden=""  name="" id="edia2" class="form-control input-sm">
          <input type="text" hidden="" name="" id="eclase2" class="form-control input-sm">
          <input type="text" hidden="" name="" id="ehorarioi2" class="form-control input-sm">
          <input type="text" hidden="" name="" id="ehorariof2" class="form-control input-sm">
          <input type="text" hidden="" hidden="" id="idclase2" name="">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal" id="actualizarclase">Actualizar</button>

      </div>
    </div>
  </div>
</div>
 

</asp:Content>
