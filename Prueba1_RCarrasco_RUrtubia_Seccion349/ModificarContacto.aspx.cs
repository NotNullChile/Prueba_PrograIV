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
            if (Session["ContactoAModificar"] != null)
            {
                Persona p = (Persona)Session["ContactoAModificar"];
                
                ddlTipoContacto.Text = p.TipoPersona;
                txtRut.Text = p.Rut;
                txtNombre.Text = p.Nombre;
                txtApellido.Text = p.Apellido;
                txtCiudad.Text = p.Ciudad;
                txtCorreo.Text = p.Correo;
                
            }
        }

        protected void txtRut_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnModificarContacto_Click(object sender, EventArgs e)
        {

        }
    }
}