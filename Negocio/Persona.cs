using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class Persona
    {
        //  nombre y el apellido, la ciudad, el correo electrónico 
        //y uno o varios teléfonos ya sean celulares o fijos.
        protected string rut;
        protected string nombre;
        protected string apeliido;
        protected string ciudad;
        protected string correo;
        protected List<Telefono> telefonos;
        private string tipoPersona;      
      
        public Persona()
        {
            this.rut = "nn";
            this.nombre = "nn";
            this.apeliido = "nn";
            this.ciudad = "nn";
            this.correo = "n@n.cl";
            this.telefonos = new List<Telefono>();
            this.tipoPersona = "nn";
        }

        /// <summary>
        /// Constructor con parámetros
        /// </summary>
        /// <param name="r">Rut</param>
        /// <param name="n">Nombre</param>
        /// <param name="a">Apellido</param>
        /// <param name="ci">Ciudad</param>
        /// <param name="co">Correo</param>
        /// <param name="t">Teléfono</param>
        /// <param name="tp">Tipo Persona</param>
        public Persona(string r, string n, string a, string ci, string co, List<Telefono> t, string tp)
        {
            this.rut = r;
            this.nombre = n;
            this.apeliido = a;
            this.ciudad = ci;
            this.correo = co;
            this.telefonos = t;
            this.tipoPersona = tp;
        }

        public string Rut
        {
            get { return rut; }
            set { rut = value; }
        }

        public string TipoPersona
        {
            get { return tipoPersona; }
            set { tipoPersona = value; }
        }

        public List<Telefono> Telefonos
        {
            get { return telefonos; }
            set { telefonos = value; }
        }
        

        public string Correo
        {
            get { return correo; }
            set { correo = value; }
        }
        

        public string Ciudad
        {
            get { return ciudad; }
            set { ciudad = value; }
        }
        

        public string  Apellido
        {
            get { return apeliido; }
            set { apeliido = value; }
        }
        

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }
        

    }
}
