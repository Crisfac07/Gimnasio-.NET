using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProyectoFinal.LogicaNegocio;
using ProyectoFinal.Entidades;

namespace ProyectoFinal
{
    public partial class UsuarioMisClases : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] == null)
            {
                Response.Redirect("Index.aspx");
            }
            Socio objSocio = SocioLN.getInstance().obtenerSocio(Session["userName"].ToString());
            List<Clase> clase = SocioLN.getInstance().verHistorial(objSocio);

            grid.DataSource = clase;
            grid.DataBind();

        }

        protected void gvTablaUno_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                int index = int.Parse(e.CommandArgument.ToString());

                GridViewRow selectedRow = grid.Rows[index];
                TableCell id = selectedRow.Cells[0];
                TableCell nombre = selectedRow.Cells[1];
                TableCell dia = selectedRow.Cells[2];
                TableCell hInicio = selectedRow.Cells[3];
                TableCell hFin = selectedRow.Cells[4];
                int idC = Convert.ToInt32(id.Text);
                string nombreClase = nombre.Text;
                string diaClase = dia.Text;
                string horaI = hInicio.Text;
                string horaF = hFin.Text;


                Clase clase = new Clase(idC, nombreClase, diaClase, horaI, horaF);
                Socio objSocio = SocioLN.getInstance().obtenerSocio(Session["userName"].ToString());
                bool registro = SocioLN.getInstance().inscipcion(objSocio, clase);
                if (registro == true)
                {
                    Response.Write("<script>alert('Registro Exitoso');</script>");
                }
                else
                {
                    Response.Write("<script>alert('No se pudo registrar');</script>");
                }

            }
        }
    }
}