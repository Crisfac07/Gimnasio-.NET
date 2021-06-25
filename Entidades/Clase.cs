using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoFinal.Entidades
{
    public class Clase
    {
        public String nombre { get; set; }
        public String dia { get; set; }
        public String hInicio { get; set; }
        public String hFin { get; set; }
        public int id { get; set; }
        public Clase() { }

        public Clase(String nombre, String dia, String hInicio, String hFin)
        {
            this.nombre = nombre;
            this.dia = dia;
            this.hInicio = hInicio;
            this.hFin = hFin;
        }
        public Clase(int id, String nombre, String dia, String hInicio, String hFin)
        {
            this.nombre = nombre;
            this.dia = dia;
            this.hInicio = hInicio;
            this.hFin = hFin;
            this.id = id;
        }
    }
}