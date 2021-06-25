using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoFinal.Entidades
{
    public class User
    {
        public String userName { get; set; }
        public String pasword { get; set; }
        public String rol { get; set; }

        public User(string userName, string pasword, string rol)
        {
            this.userName = userName;
            this.pasword = pasword;
            this.rol = rol;
        }
        public User(string userName, string pasword)
        {
            this.userName = userName;
            this.pasword = pasword;
        }
        public User(){ }
    }
}