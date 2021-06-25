using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProyectoFinal.Entidades;
using ProyectoFinal.LogicaNegocio;

namespace ProyectoFinal
{
    public partial class InicioDeSesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIniciar(object sender, EventArgs e) {
            User objUser = UsuarioLN.getInstance().AccesoSistema(txtIniSesUsuario.Text, txtIniSesPass.Text);
     
            if (objUser != null)
            {
                //variable de sesión
                Session["userName"] = objUser.userName;
                if (objUser.rol.Equals("Socio")) {
                    
                    Response.Redirect("InicioUsuario.aspx");
                }
                else {
                    Response.Redirect("AdministradorClases.aspx");
                }
         
            }
            else {
                Response.Write("<script>alert('Error al iniciar sesion');</script>");
            }
        }
    }
}