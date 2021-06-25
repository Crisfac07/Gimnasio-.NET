using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ProyectoFinal.AccesoDatos;
using ProyectoFinal.Entidades;
using MySql.Data.MySqlClient;

namespace ProyectoFinal.AccesoDatos
{
    public class UserDAO
    {
        #region "PATRON SINGLETON"
        private static UserDAO daoUser = null;
        public static UserDAO getInstance()
        {
            if (daoUser == null)
            {
                daoUser = new UserDAO();
            }
            return daoUser;
        }
        #endregion

         public User AccesoSistema(String user, String password) {
            MySqlConnection conexion = null;
            MySqlCommand cmd = null;
            User objUsuario = null;
            MySqlDataReader dr = null;
            try {
                conexion = Conexion.getInstance().ConexionBD();
                cmd = new MySqlCommand("sp_iSesionUsuario", conexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@spUser",user);
                cmd.Parameters.AddWithValue("@spCont", password);
                conexion.Open();
                dr = cmd.ExecuteReader();
                
                if (dr.Read()) {
                    objUsuario = new User();
                    objUsuario.userName = dr["UserName"].ToString();
                    objUsuario.pasword = dr["Contrasena"].ToString();
                    objUsuario.rol = dr["Rol"].ToString();
                }
            }
            catch (Exception e) {
                objUsuario = null;
                throw e;
            }
            finally { conexion.Close(); }
            return objUsuario;

        }
    }
}
   