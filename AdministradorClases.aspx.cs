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
    public partial class AdministradorClases : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"]==null) {
                Response.Redirect("Index.aspx");
            }
            if (!IsPostBack) {
                cargarGrilla();
            }
        }

     /*   protected void gvTablaUno_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Editar")
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

            } else if (e.CommandName == "Borrar") {
                int index = int.Parse(e.CommandArgument.ToString());
                GridViewRow selectedRow = grid.Rows[index];
                TableCell id = selectedRow.Cells[0];
                int idC = Convert.ToInt32(id.Text);
                bool idConfirmacion = ClaseLN.getInstance().eliminarClase(idC);
                if (idConfirmacion == true)
                {
                    Response.Write("<script>alert('Se ha eliminado la clase');</script>");
                  }
            else
            {
                Response.Write("<script>alert('Error al eliminar');</script>");
            }
        }
        }*/

        protected void BtnRegistrar(object sender, EventArgs e) {
            Clase clase = getClase();
            bool registro = ClaseLN.getInstance().registroClase(clase);
            if (registro == true)
            {
                Response.Write("<script>alert('Registro exitoso');</script>");
                grid.EditIndex = -1;
                cargarGrilla();
            }
            else
            {
                Response.Write("<script>alert('Error al registrar');</script>");
            }
        }
     

        private Clase getClase()
        {
            Clase objClase = new Clase();

            objClase.nombre = txtRegistroClase.Text;
            objClase.dia = txtRegistroDia.Text;
            objClase.hInicio = txtHoraI.Text;
            objClase.hFin = txtHoraF.Text;
            return objClase;
        }

        protected void rowCancelEditEvent(object sender, GridViewCancelEditEventArgs e)
        {
            grid.EditIndex = -1;
            cargarGrilla();
        }

        protected void rowEditingEvent(object sender, GridViewEditEventArgs e)
        {
            grid.EditIndex = e.NewEditIndex;
            cargarGrilla();
        }

        protected void rowUpdatingEvent(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow fila = grid.Rows[e.RowIndex];
            int codigo = Convert.ToInt32(grid.DataKeys[e.RowIndex].Values[0]);

            String nombre = (fila.FindControl("txtNombre") as TextBox).Text;
            String dia = (fila.FindControl("txtDia") as TextBox).Text;
            String inicio = (fila.FindControl("txtInicio") as TextBox).Text;
            String fin = (fila.FindControl("txtFin") as TextBox).Text;

            Clase c = ClaseLN.getInstance().obtenerClase(codigo);
            c.nombre = nombre;
            c.dia = dia;
            c.hInicio = inicio;
            c.hFin = fin;

            ClaseLN.getInstance().actualizarrClase(c);
            grid.EditIndex = -1;
            cargarGrilla();

        }

        protected void rowDeletingEvent(object sender, GridViewDeleteEventArgs e)
        {
            int codigo = Convert.ToInt32(grid.DataKeys[e.RowIndex].Values[0]);

            bool idConfirmacion = ClaseLN.getInstance().eliminarClase(codigo);
           
            grid.EditIndex = -1;
            cargarGrilla();
        }

        private void cargarGrilla() {
            List<Clase> clase = ClaseLN.getInstance().Clase();

            grid.DataSource = clase;
            grid.DataBind();
        }
    }
}
