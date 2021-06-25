using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFinal
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            verificarSesion();
        }
        public void verificarSesion() {
            if (Session["userName"] == null ) {
                Response.Redirect("~/Index.aspx");
            }
        }

    }
}