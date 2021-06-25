using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProyectoFinal.Entidades;
using ProyectoFinal.LogicaNegocio;

namespace ProyectoFinal
{
    public partial class UsuarioModificar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            verificarCuenta();
           
            if (!IsPostBack)
            {
                llenarForm();
            }

        }


        protected void btnRegistroContinuar_Click(object sender, EventArgs e)
        {
           
            Socio objSocio = new Socio();
            objSocio.Nombre = txtEditarNombre.Text;
            objSocio.PAp = txtEditarPriApe.Text;
            objSocio.SAp = txtEditarSApe.Text;
            objSocio.CURP = txtEditarCURP.Text;
            objSocio.edad = Convert.ToInt32(txtEditarEdad.Text);
            objSocio.Correo = txtEditarCorreo.Text;
            objSocio.user = Session["userName"].ToString();
            Socio socio = objSocio;

        
                bool registro = SocioLN.getInstance().actualizarrSocio(socio);
                if (registro == true)
                {
                    Response.Write("<script>alert('Actualización exitosa');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Error al actualizar');</script>");
                }
            }



        public void llenarForm() {
            Socio objSocio = SocioLN.getInstance().obtenerSocio(Session["userName"].ToString());
            txtEditarNombre.Text = objSocio.Nombre;
            txtEditarPriApe.Text = objSocio.PAp;
            txtEditarSApe.Text = objSocio.SAp;
            txtEditarCURP.Text = objSocio.CURP;
            txtEditarEdad.Text = Convert.ToInt32(objSocio.edad).ToString();
            txtEditarCorreo.Text = objSocio.Correo;
        }

            public void verificarCuenta()
        {
            if (Session["userName"] == null)
            {
                Response.Redirect("Index.aspx");
            }

        }

        private Boolean validacionCorreo(String email)
        {
            String expresion;
            expresion = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
            if (Regex.IsMatch(email, expresion))
            {
                if (Regex.Replace(email, expresion, String.Empty).Length == 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }

    }


}