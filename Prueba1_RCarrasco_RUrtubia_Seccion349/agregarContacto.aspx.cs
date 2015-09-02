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
                List<Telefono> listaTelefonos = new List<Telefono>();
                Telefono t = new Telefono();
                //Recolección de datos de la página
                string tipoPersona  = ddlTipoContacto.Text;
                string nombre       = txtNombre.Text;
                string apellido     = txtApellido.Text;
                string ciudad       = txtCiudad.Text;
                string correo       = txtCorreo.Text;
                //Ver con for
                t.Numero  = int.Parse(txtTelefono.Text);
                listaTelefonos.Add(t);
                if(Session["listaPersona"] != null)
                {
                    listaPersona = (List<Persona>)Session["listaPersona"];
                }

                //Creación persona
                Persona p = new Persona(nombre, apellido, ciudad, correo, listaTelefonos, tipoPersona);

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
            List<Telefono> listaTelefonos = new List<Telefono>();
            Telefono t = new Telefono();
            t.Numero = int.Parse(txtTelefono.Text);
            personaTemporal.Nombre = txtNombre.Text;
            personaTemporal.Apellido = txtApellido.Text;
            personaTemporal.Correo = txtCorreo.Text;
            personaTemporal.Telefonos = listaTelefonos;
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