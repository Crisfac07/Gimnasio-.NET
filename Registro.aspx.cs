using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using ProyectoFinal.Entidades;
using ProyectoFinal.LogicaNegocio;

namespace ProyectoFinal
{
    public partial class Registro2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {


            }
        }

        private Socio getRegistro() {
            Socio objSocio = new Socio();

            string Password = txtRegistroPass.Text;
            string VerPassword = txtRegistroVerPass.Text;

            objSocio.Nombre = txtRegistroNombre.Text;
            objSocio.PAp = txtRegistroPriApe.Text;
            objSocio.SAp = txtRegistroSegApe.Text;
            objSocio.CURP = txtRegistroCURP.Text;
            objSocio.edad = Convert.ToInt32(txtRegistroEdad.Text);
            objSocio.Correo = txtRegistroCorreo.Text;
            objSocio.user = txtRegistroUsuario.Text;
            objSocio.cont = Password;
            

            return objSocio;
        }

        protected void btnRegistroContinuar_Click(object sender, EventArgs e)
        {
            string Password = txtRegistroPass.Text;
            string VerPassword = txtRegistroVerPass.Text;
            string Curp = txtRegistroCURP.Text;
            string correo = txtRegistroCorreo.Text;
            string usuario = txtRegistroUsuario.Text;

            Socio s = SocioLN.getInstance().obtenerSocio(usuario);


            if (Curp.Length != 18)
            {
                Response.Write("<script>alert('CURP INCORRECTO');</script>");
            }
            else if (validacionCorro(correo) == false)
            {
                Response.Write("<script>alert('CORREO INCORRECTO');</script>");
            }
            else if (Password != VerPassword)
            {
                Response.Write("<script>alert('CONTRASEÑAS DIFERENTES');</script>");
            }else if (s != null)
            {
                Response.Write("<script>alert('Nombre de usuario registrado');</script>");
            }
            else
            {
                Socio socio = getRegistro();
                bool registro = SocioLN.getInstance().registroSocio(socio);
                if (registro == true)
                {
                    Response.Write("<script>alert('Registro exitoso');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Error al registrar');</script>");
                }
            }
        }

        private Boolean validacionCorro(String email)
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




        /*
        public class RegistroUsuario
        {

            private string nombre;
            private string priApe;
            private string segApe;
            private string curp;
            private int edad;
            private string correo;
            private string password;
            private string verPassword;

            public RegistroUsuario(string nombre, string priApe, string segApe, string curp, int edad, string correo, string password, string verPassword)
            {
                this.nombre = nombre;
                this.PriApe = priApe;
                this.SegApe = segApe;
                this.curp = curp;
                this.Edad = edad;
                this.Correo = correo;
                this.Password = password;
                this.verPassword = verPassword;
            }

            public string Nombre
            {
                get { return Nombre; }
                set { Nombre = value; }
            }
            public string PriApe
            {
                get { return priApe; }
                set { priApe = value; }
            }
            public string SegApe
            {
                get { return segApe; }
                set { segApe = value; }
            }
            public string CURP
            {
                get { return curp; }
                set { curp = value; }
            }
            public int Edad
            {
                get { return edad; }
                set { edad = value; }
            }
            public string Correo
            {
                get { return correo; }
                set { correo = value; }
            }
            public string Password
            {
                get { return password; }
                set { password = value; }
            }
            public string VerPassword
            {
                get { return verPassword; }
                set { verPassword = value; }
            }

        }

        protected void btnRegistroContinuar_Click(object sender, EventArgs e)
        {
            string Nombre = txtRegistroNombre.Text;
            string PriApe = txtRegistroPriApe.Text;
            string SegApe = txtRegistroSegApe.Text;
            string CURP = txtRegistroCURP.Text;
            int Edad = Convert.ToInt32(txtRegistroEdad.Text);
            string Correo = txtRegistroCorreo.Text;
            string Usuario = txtRegistroUsuario.Text;
            string Password = txtRegistroPass.Text;
            string VerPassword = txtRegistroVerPass.Text;

            string cstr =
                "Server = localhost;" +
                "Database = gym;" +
                "UserID = root;" +
                "Password = root01;" +
                "SSLMode = none;";

            MySqlConnection cnx = new MySqlConnection(cstr);
            MySqlCommand cmd = new MySqlCommand("sp_Registro", cnx);

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@Nombre", MySqlDbType.VarChar, 20).Value = txtRegistroNombre.Text;
            cmd.Parameters.Add("@PriApe", MySqlDbType.VarChar, 20).Value = txtRegistroPriApe.Text;
            cmd.Parameters.Add("@SegApe", MySqlDbType.VarChar, 20).Value = txtRegistroSegApe.Text;
            cmd.Parameters.Add("@CURP", MySqlDbType.VarChar, 18).Value = txtRegistroCURP.Text;
            cmd.Parameters.Add("@Edad", MySqlDbType.VarChar, 2).Value = txtRegistroEdad.Text;
            cmd.Parameters.Add("@Correo", MySqlDbType.VarChar, 40).Value = txtRegistroCorreo.Text;
            cmd.Parameters.Add("@Pass", MySqlDbType.VarChar, 40).Value = txtRegistroPass.Text;

            MySqlParameter Param_Result = new MySqlParameter("@RESULT", SqlDbType.Bit)
            {
                Direction = ParameterDirection.Output
            };
            cmd.Parameters.Add(Param_Result);
            cnx.Open();
            cmd.ExecuteNonQuery();


            /*
            MySqlConnection cnx = new MySqlConnection(cstr);

            string query = "call sp_Registro('?', 'Jimenez', 'De Anda', 'ROCE000131HNLDNDA0', 21, 'correo@gmail.com', 'AAAAA');";
            MySqlDataAdapter adp = new MySqlDataAdapter(query, cnx);

            lbl1.Text = adp.ToString();

            DataSet dst = new DataSet();
            adp.Fill(dst);
            for (int i = 0; i < dst.Tables[0].Rows.Count; i++)
            {
                for (int j = 0; j < dst.Tables[0].Columns.Count; j++)
                {
                    lbl1.Text = (dst.Tables[0].Rows[i][j] + "\t");
                }
                Console.WriteLine();
            }
        }

            */



    }
}