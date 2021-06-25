using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoFinal.Entidades
{
    public class Socio
    {
        public int IdSocio { get; set; }
        public String Nombre { get; set; }
        public String PAp { get; set; }
        public String SAp { get; set; }
        public int edad { get; set; }
        public String CURP { get; set; }
        public String Correo { get; set; }
        public String user { get; set; }

        public String cont { get; set; }

        public Socio(int idSocio, string nombre, string pAp, string sAp, string cURP, int edad,  string correo, string user, string cont)
        {
            IdSocio = idSocio;
            Nombre = nombre;
            PAp = pAp;
            SAp = sAp;
            this.edad = edad;
            CURP = cURP;
            Correo = correo;
            this.user = user;
            this.cont = cont;
        }

        public Socio(string nombre, string pAp, string sAp,  string cURP, int edad, string correo, string user, string cont)
        {
            Nombre = nombre;
            PAp = pAp;
            SAp = sAp;
            this.edad = edad;
            CURP = cURP;
            Correo = correo;
            this.user = user;
            this.cont = cont;
        }

        public Socio(string nombre, string pAp, string sAp, string cURP, int edad, string correo)
        {
            Nombre = nombre;
            PAp = pAp;
            SAp = sAp;
            this.edad = edad;
            CURP = cURP;
            Correo = correo;
        }
        public Socio() { }
    }
}