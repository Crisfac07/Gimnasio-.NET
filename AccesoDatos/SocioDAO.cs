using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;
using ProyectoFinal.Entidades;

namespace ProyectoFinal.AccesoDatos
{
    public class SocioDAO
    {
        #region "PATRON SINGLETON"
        private static SocioDAO daoUser = null;
        public static SocioDAO getInstance()
        {
            if (daoUser == null)
            {
                daoUser = new SocioDAO();
            }
            return daoUser;
        }
        #endregion

        public bool registrarSocio(Socio objSocio) {
            bool registroE = false;
            MySqlConnection con = null;
            MySqlCommand cmd = null;   
            try
            {
                con = Conexion.getInstance().ConexionBD();
                cmd = new MySqlCommand("sp_registrarSocio", con);
                cmd.CommandType = CommandType.StoredProcedure;
        
                cmd.Parameters.AddWithValue("@spNombre",objSocio.Nombre);
                cmd.Parameters.AddWithValue("@PAp",objSocio.PAp);
                cmd.Parameters.AddWithValue("@SAp", objSocio.SAp);
                cmd.Parameters.AddWithValue("@spCURP", objSocio.CURP);
                cmd.Parameters.AddWithValue("@spEdad", objSocio.edad);    
                cmd.Parameters.AddWithValue("@spCorreo", objSocio.Correo);
                cmd.Parameters.AddWithValue("@spUser", objSocio.user);
                cmd.Parameters.AddWithValue("@spContrasena", objSocio.cont);
                con.Open();

                int row = cmd.ExecuteNonQuery();
                if (row>0) {
                    registroE = true;
                }
            }
            catch (Exception e)
            {
                registroE = false;
                throw e;
            }
            finally {
                con.Close();
            }
            return registroE;
        }

        public bool actualizarrSocio(Socio objSocio)
        {
            bool actualizaE = false;
            MySqlConnection con = null;
            MySqlCommand cmd = null;
            try
            {
                con = Conexion.getInstance().ConexionBD();
                cmd = new MySqlCommand("sp_actualizarSocio", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@userA", objSocio.user);
                cmd.Parameters.AddWithValue("@spNombre", objSocio.Nombre);
                cmd.Parameters.AddWithValue("@PAp", objSocio.PAp);
                cmd.Parameters.AddWithValue("@SAp", objSocio.SAp);
                cmd.Parameters.AddWithValue("@spCURP", objSocio.CURP);
                cmd.Parameters.AddWithValue("@spEdad", objSocio.edad);
                cmd.Parameters.AddWithValue("@spCorreo", objSocio.Correo);
                con.Open();

                cmd.ExecuteNonQuery();
                actualizaE = true;
            }
            catch (Exception e)
            {
                actualizaE = false;
                throw e;
            }
            finally
            {
                con.Close();
            }
            return actualizaE;
        }

        public Socio obtenerSocio(String usuario) {
            MySqlConnection conexion = null;
            MySqlCommand cmd = null;
            Socio objSocio = null;
            MySqlDataReader dr = null;
            try
            {
                conexion = Conexion.getInstance().ConexionBD();
                cmd = new MySqlCommand("sp_obtenerUsuario", conexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@spUser", usuario);
                conexion.Open();
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    objSocio = new Socio();
                    objSocio.IdSocio = Convert.ToInt32(dr["No_Socio"]);
                    objSocio.Nombre = dr["Nombre"].ToString();
                    objSocio.PAp = dr["PApellido"].ToString();
                    objSocio.SAp = dr["SApellido"].ToString();
                    objSocio.edad = Convert.ToInt32(dr["Edad"]);
                    objSocio.CURP = dr["CURP"].ToString();
                    objSocio.Correo = dr["correo"].ToString();
                    objSocio.cont = dr["Contrasena"].ToString();
                }
            }
            catch (Exception e)
            {
                objSocio = null;
                throw e;
            }
            finally { conexion.Close(); }
            return objSocio;     

    }

        public bool inscribirClase(Socio objSocio, Clase objClase) {
            bool inscribirC = false;
            MySqlConnection con = null;
            MySqlCommand cmd = null;
            try
            {
                con = Conexion.getInstance().ConexionBD();
                cmd = new MySqlCommand("sp_inscribirClase", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@spId", objClase.id);
                cmd.Parameters.AddWithValue("@spNoSocio", objSocio.IdSocio);
                cmd.Parameters.AddWithValue("@spInicio", objClase.hInicio);
                cmd.Parameters.AddWithValue("@spFin", objClase.hFin);
                cmd.Parameters.AddWithValue("@spDia", objClase.dia);
            
                con.Open();

                int row = cmd.ExecuteNonQuery();
                if (row > 0)
                {
                    inscribirC = true;
                }

            }
            catch (Exception e)
            {
                inscribirC = false;
                throw e;
            }
            finally
            {
                con.Close();
            }
            return inscribirC;
        }

        public List<Clase> verHistorial(Socio socio)
        {
            List<Clase> clases = new List<Clase>();
            MySqlConnection conn = null;
            MySqlCommand cmd = null;
            MySqlDataReader dr = null;

            try
            {
                conn = Conexion.getInstance().ConexionBD();
                cmd = new MySqlCommand("sp_visualizarHistorial", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idSocio", socio.IdSocio);
                conn.Open();
                cmd.ExecuteNonQuery();
                dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    Clase objClase = new Clase();
                    objClase.id = Convert.ToInt32(dr["id_Clase"]);
                    objClase.dia = dr["Dia"].ToString();
                    objClase.nombre = dr["Nombre_Clase"].ToString();
                    
                    objClase.hInicio = dr["Inicio_Clase"].ToString();
                    objClase.hFin = dr["Fin_Clase"].ToString();

                    clases.Add(objClase);
                }

            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                conn.Close();
            }
            return clases;
        }
    }

}