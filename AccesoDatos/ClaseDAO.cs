using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProyectoFinal.Entidades;
using MySql.Data.MySqlClient;
using System.Data;

namespace ProyectoFinal.AccesoDatos
{
    public class ClaseDAO
    {
        #region "PATRON SINGLETON"
        public static ClaseDAO objClase = null;

        public static ClaseDAO getInstance() {
            if (objClase == null) {
                objClase = new ClaseDAO();
            }
            return objClase;
        }
        #endregion

        public List<Clase> getClases() {
            List<Clase> clases = new List<Clase>();
            MySqlConnection conn = null;
            MySqlCommand cmd = null;
            MySqlDataReader dr = null;

            try
            {
                conn = Conexion.getInstance().ConexionBD();
                cmd = new MySqlCommand("sp_VisualizarClases", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                conn.Open();
                dr = cmd.ExecuteReader();

                while (dr.Read()) {
                    Clase objClase = new Clase();
                    objClase.id = Convert.ToInt32( dr["id_Clase"]);
                    objClase.nombre = dr["Nombre_Clase"].ToString();
                    objClase.dia= dr["Dia"].ToString();
                    objClase.hInicio = dr["Inicio_Clase"].ToString();
                    objClase.hFin = dr["Fin_Clase"].ToString();

                    clases.Add(objClase);
                }
               
            }
            catch (Exception e)
            {
                throw e;
            }
            finally {
                conn.Close();
            }
            return clases;
        }

        public bool registrarClase(Clase objClase)
        {
            bool registroC = false;
            MySqlConnection con = null;
            MySqlCommand cmd = null;
            try
            {
                con = Conexion.getInstance().ConexionBD();
                cmd = new MySqlCommand("sp_RegistrarClase", con);
                cmd.CommandType = CommandType.StoredProcedure;


                cmd.Parameters.AddWithValue("@spDia", objClase.dia);
                cmd.Parameters.AddWithValue("@spNombre", objClase.nombre);
                cmd.Parameters.AddWithValue("@spInicio", objClase.hInicio);
                cmd.Parameters.AddWithValue("@spFin", objClase.hFin);

                con.Open();

                int row = cmd.ExecuteNonQuery();
                if (row > 0)
                {
                    registroC = true;
                }
            }
            catch (Exception e)
            {
                registroC = false;
                throw e;
            }
            finally
            {
                con.Close();
            }
            return registroC;
        }

        public bool actualizarrClase(Clase obClase)
        {
            bool actualizaC = false;
            MySqlConnection con = null;
            MySqlCommand cmd = null;
            try
            {
                con = Conexion.getInstance().ConexionBD();
                cmd = new MySqlCommand("sp_actualizarClase", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@spId", obClase.id);
                cmd.Parameters.AddWithValue("@spNombre", obClase.nombre);
                cmd.Parameters.AddWithValue("@spDia", obClase.dia);
                cmd.Parameters.AddWithValue("@spInicio", obClase.hInicio);
                cmd.Parameters.AddWithValue("@spFin", obClase.hFin);

                con.Open();

                cmd.ExecuteNonQuery();
                actualizaC = true;
            }
            catch (Exception e)
            {
                actualizaC = false;
                throw e;
            }
            finally
            {
                con.Close();
            }
            return actualizaC;
        }
        public Clase obtenerClase(int id)
        {
            MySqlConnection conexion = null;
            MySqlCommand cmd = null;
            Clase objClase = null;
            MySqlDataReader dr = null;
            try
            {
                conexion = Conexion.getInstance().ConexionBD();
                cmd = new MySqlCommand("sp_buscarClase", conexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@spId", id);
                conexion.Open();
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    objClase = new Clase();
                    objClase.id = Convert.ToInt32(dr["id_Clase"]);
                    objClase.nombre = dr["Nombre_Clase"].ToString();
                    objClase.dia = dr["Dia"].ToString();
                    objClase.hInicio = dr["Inicio_Clase"].ToString();
                    objClase.hFin = dr["Fin_Clase"].ToString();
                 
                }
            }
            catch (Exception e)
            {
                objClase = null;
                throw e;
            }
            finally { conexion.Close(); }
            return objClase;

        }
        public bool eliminarClase(int id)
        {
            bool eliminarC = false;
            MySqlConnection con = null;
            MySqlCommand cmd = null;
            try
            {
                con = Conexion.getInstance().ConexionBD();
                cmd = new MySqlCommand("sp_eliminarClase", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idClase", id);
                con.Open();

                int row = cmd.ExecuteNonQuery();
                if (row > 0)
                {
                    eliminarC = true;
                }
            }
            catch (Exception e)
            {
                eliminarC = false;
                throw e;
            }
            finally
            {
                con.Close();
            }
            return eliminarC;
        }

  
    }
}