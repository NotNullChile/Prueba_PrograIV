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
        protected string nombre;
        protected string apeliido;
        protected string ciudad;
        protected string correo;
        protected List<Telefonos> telefonos;

        public Persona()
        {
            this.nombre = "nn";
            this.apeliido = "nn";
            this.ciudad = "nn";
            this.correo = "n@n.cl";
            this.telefonos = new List<Telefonos>();
        }

        /// <summary>
        /// Constructor con parámetros
        /// </summary>
        /// <param name="n">Nombre</param>
        /// <param name="a">Apellido</param>
        /// <param name="ci">Ciudad</param>
        /// <param name="co">Comuna</param>
        /// <param name="t">Teléfono</param>
        public Persona(string n, string a, string ci, string co, List<Telefonos> t)
        {
            this.nombre = n;
            this.apeliido = a;
            this.ciudad = ci;
            this.correo = co;
            this.telefonos = t;
        }

        public List<Telefonos> Telefonos
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
