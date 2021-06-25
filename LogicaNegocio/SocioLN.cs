using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProyectoFinal.Entidades;
using ProyectoFinal.AccesoDatos;

namespace ProyectoFinal.LogicaNegocio
{
    public class SocioLN
    {
        #region "PATRON SINGLETON"
        private static SocioLN objSocio = null;
        private SocioLN() { }

        public static SocioLN getInstance() {
            if (objSocio == null) {
                objSocio = new SocioLN();
            }
            return objSocio;
        }
        #endregion

        public bool registroSocio(Socio socio) {

            try {
                return SocioDAO.getInstance().registrarSocio(socio);
            }
            catch (Exception e) {
                throw e;
            }
        }
        public Socio obtenerSocio(String user)
        {
            try
            {
                return SocioDAO.getInstance().obtenerSocio(user);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public bool inscipcion(Socio socio, Clase clase)
        {

            try
            {
                return SocioDAO.getInstance().inscribirClase(socio, clase);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public bool actualizarrSocio(Socio objSocio) {
            try
            {
                return SocioDAO.getInstance().actualizarrSocio(objSocio);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public List<Clase> verHistorial(Socio socio) {
            try
            {
                return SocioDAO.getInstance().verHistorial(socio);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }


}