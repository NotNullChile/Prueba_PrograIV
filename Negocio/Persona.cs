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
        private string nombre;
        private string apeliido;
        private string ciudad;
        private string correo;
        private List<> telefonos;

        public Persona()
        {
            this.nombre = "nn";
            this.apeliido = "nn";
            this.ciudad = "nn";
            this.correo = "n@n.cl";
            this.telefonos = ;
        }
        public Persona()
        {
            this.nombre;
            this.apeliido;
            this.ciudad;
            this.correo;
            this.telefonos;
        }

        public int[] Telefonos
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
