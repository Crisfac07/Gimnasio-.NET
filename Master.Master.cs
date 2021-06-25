using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFinal
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkInicio(Object sender, EventArgs args)
        {
            Response.Redirect("IndexCris.aspx");
        }

        protected void lnkServicios(Object sender, EventArgs args)
        {
            Response.Redirect("ServiciosCris.aspx");
        }
        protected void lnkRegistro(Object sender, EventArgs args)
        {
            Response.Redirect("RegistroCris.aspx");
        }

        protected void lnkIniciarSesion(Object sender, EventArgs args)
        {
            Response.Redirect("IniciarSesionCris.aspx");
        }
    }
}