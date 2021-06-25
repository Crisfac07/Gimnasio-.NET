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
    public partial class InicioUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            verificarCuenta();
        }

        public void verificarCuenta() {
            if (Session["userName"] == null)
            {
                Response.Redirect("Index.aspx");
            }
            else {
                Socio objSocio = SocioLN.getInstance().obtenerSocio(Session["userName"].ToString());

                bienvenido.Text =  " " + objSocio.Nombre;
            }
        }
    }
}