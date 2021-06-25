using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProyectoFinal.AccesoDatos;
using ProyectoFinal.Entidades;

namespace ProyectoFinal.LogicaNegocio
{
    public class UsuarioLN
    {
        
        #region "PATRON SINGLETON"
        private static UsuarioLN objUusario = null;
        private UsuarioLN() { }
        public static UsuarioLN getInstance() {
            if (objUusario == null) {
                objUusario = new UsuarioLN();
            }
            return objUusario;
        }
        #endregion

        public User AccesoSistema(String user, String pasword) {
            try
            {
                return UserDAO.getInstance().AccesoSistema(user, pasword);
            }
            catch (Exception e) {
                throw e;
            }
        }
    }
}