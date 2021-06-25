using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace ProyectoFinal.AccesoDatos
{
    public class Conexion
    {
        #region "PATRON SINGLETON"
        private static Conexion conexion = null;
        private Conexion() { }
        public static Conexion getInstance()
        {
            if (conexion == null)
            {
                conexion = new Conexion();
            }
            return conexion;
        }
        #endregion

        public MySqlConnection ConexionBD()
        {
            MySqlConnection conexion = new MySqlConnection();
            conexion.ConnectionString = "Server=localhost;" +
               "Database=gym;" +
               "Uid=root;" +
               "Pwd=root01;";
            return conexion;

            
        }
    }
}