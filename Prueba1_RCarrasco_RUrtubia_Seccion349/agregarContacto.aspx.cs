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

        }
        public void ingresarClienteProveedor()
        {
            try
            {
                //Creación de la lista que guardará los datos
                List<Persona> listaPersona = new List<Persona>();
                List<Telefonos> listaTelefonos = new List<Telefonos>();
                Telefonos t = new Telefonos();
                //Recolección de datos de la página
                string tipoPersona  = ddlTipoContacto.Text;
                string nombre       = txtNombre.Text;
                string apellido     = txtApellido.Text;
                string ciudad       = txtCiudad.Text;
                string correo       = txtCorreo.Text;
                //Ver con for
                t.Telefono          = int.Parse(txtTelefono.Text);
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
           
           
        }

        protected void btnAgregarContacto_Click(object sender, EventArgs e)
        {
            ingresarClienteProveedor();
        }
    }
}