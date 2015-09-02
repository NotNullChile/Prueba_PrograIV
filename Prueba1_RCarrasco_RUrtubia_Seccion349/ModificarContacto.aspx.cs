using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Prueba1_RCarrasco_RUrtubia_Seccion349
{
    public partial class ModificarContacto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Negocio.Persona> personaAModificar = (List<Negocio.Persona>)Session["personaAModificar"];

            if (Session["personaAModificar"] != null)
            {
                foreach (Negocio.Persona p in personaAModificar)
                {

                    ddlTipoContacto.Text = p.TipoPersona;
                    txtRut.Text = p.Rut;
                    txtNombre.Text = p.Nombre;
                    txtApellido.Text = p.Apellido;
                    txtCiudad.Text = p.Ciudad;
                    txtCorreo.Text = p.Correo;
                    txtTelefono.Text = p.Telefonos;
                }
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }

        protected void txtRut_TextChanged(object sender, EventArgs e)
        {

        }
        public void modificarContacto()
        {

            List<Negocio.Persona> personaAModificar = (List<Negocio.Persona>)Session["personaAModificar"];
            List<Persona> listaPersona = new List<Persona>();
            if (Session["personaAModificar"] != null)
            {
                if (Session["listaPersona"] != null)
                {
                    listaPersona = (List<Persona>)Session["listaPersona"];
                }
                foreach (Negocio.Persona p in personaAModificar)
                {

                    ddlTipoContacto.Text = p.TipoPersona;
                    txtRut.Text = p.Rut;
                    txtNombre.Text = p.Nombre;
                    txtApellido.Text = p.Apellido;
                    txtCiudad.Text = p.Ciudad;
                    txtCorreo.Text = p.Correo;
                    txtTelefono.Text = p.Telefonos;
                }
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
        protected void btnModificarContacto_Click(object sender, EventArgs e)
        {

        }
    }
}