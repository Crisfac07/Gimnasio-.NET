using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProyectoFinal.Entidades;
using ProyectoFinal.AccesoDatos;

namespace ProyectoFinal.LogicaNegocio
{
    public class ClaseLN
    {
        #region "PATRON SINGLETON"
        private static ClaseLN objClase = null;
        private ClaseLN() { }

        public static ClaseLN getInstance()
        {
            if (objClase == null)
            {
                objClase = new ClaseLN();
            }
            return objClase;
        }
        #endregion

        public List<Clase> Clase()
        {
            try
            {
                return ClaseDAO.getInstance().getClases();
            }
            catch (Exception e)
            {
                throw e;
            }

        }

        public bool registroClase(Clase clase)
        {

            try
            {
                return ClaseDAO.getInstance().registrarClase(clase);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public bool actualizarrClase(Clase obClase) {
            try
            {
                return ClaseDAO.getInstance().actualizarrClase(obClase);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public Clase obtenerClase(int id)
        {
            try
            {
                return ClaseDAO.getInstance().obtenerClase(id);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public bool eliminarClase(int id)
        {

            try
            {
                return ClaseDAO.getInstance().eliminarClase(id);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

    }

}