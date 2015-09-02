using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Prueba1_RCarrasco_RUrtubia_Seccion349
{
    public partial class agregarContacto : System.Web.UI.Page
    {
        static int number = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["personaTemporal"] != null)
            {
                Persona personaEnMemoria = (Persona)Session["personaTemporal"];
                txtNombre.Text = personaEnMemoria.Nombre;
                txtApellido.Text = personaEnMemoria.Apellido;
                txtCiudad.Text = personaEnMemoria.Ciudad;
                txtCorreo.Text = personaEnMemoria.Correo;
                ddlTipoContacto.Text = personaEnMemoria.TipoPersona;

            }
        }
        public void ingresarClienteProveedor()
        {
            try
            {
                //Creación de la lista que guardará los datos
                List<Persona> listaPersona = new List<Persona>();
                //Recolección de datos de la página
                string rut          = txtRut.Text;
                string tipoPersona  = ddlTipoContacto.Text;
                string nombre       = txtNombre.Text;
                string apellido     = txtApellido.Text;
                string ciudad       = txtCiudad.Text;
                string correo       = txtCorreo.Text;
                string numero  = txtTelefono.Text;
                if(Session["listaPersona"] != null)
                {
                    listaPersona = (List<Persona>)Session["listaPersona"];
                }

                //Creación persona
                Persona p = new Persona(rut, nombre, apellido, ciudad, correo, numero, tipoPersona);

                listaPersona.Add(p);

                Session["listaPersona"] = listaPersona;

                Response.Redirect("index.aspx");
            }
            catch (Exception e)
            {
                Response.Write("error: " + e.Message);
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Persona personaTemporal = new Persona();
            string numero = txtTelefono.Text;
            personaTemporal.Nombre = txtNombre.Text;
            personaTemporal.Apellido = txtApellido.Text;
            personaTemporal.Correo = txtCorreo.Text;
            personaTemporal.Telefonos = numero;
            personaTemporal.Ciudad = txtCiudad.Text;
            personaTemporal.TipoPersona = ddlTipoContacto.Text;
            Session["personaTemporal"] = personaTemporal;

            Response.Redirect("agregarContacto.aspx");
        }

        protected void btnAgregarContacto_Click(object sender, EventArgs e)
        {
            ingresarClienteProveedor();
        }
    }
}