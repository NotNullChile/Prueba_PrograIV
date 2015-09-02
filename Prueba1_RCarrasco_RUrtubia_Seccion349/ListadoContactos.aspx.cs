using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
namespace Prueba1_RCarrasco_RUrtubia_Seccion349
{
    public partial class ListadoContactos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public void cargarListado()
        {
             List<Negocio.Persona> listaPersona = (List<Negocio.Persona>)Session["listaPersona"];
             if (Session["listaPersona"] != null)
              {
                foreach (Negocio.Persona p in listaPersona)
                {
                  Response.Write("<tr>");
                  Response.Write("<td class=auto-style1>" + p.TipoPersona +"</td>");
                  Response.Write("<td class=auto-style2>" + p.Nombre+"</td>");
                  Response.Write("<td class=auto-style1>" +p.Apellido+"</td>");
                  Response.Write("<td class=auto-style1>" +p.Ciudad+"</td>");
                  Response.Write("<td class=auto-style1>" +p.Correo+"</td>");
                  Response.Write("<td class=auto-style1>" +p.Telefonos.ToString()+"</td>");
                  
                  Response.Write("</tr>");
                }
               }
               else
               {
                Response.Redirect("index.aspx");
               }                                 
        }
        public void listadoBusquedasPorApellido()
        {
            List<Negocio.Persona> listaPersona = (List<Negocio.Persona>)Session["listaPersona"];
             if (Session["listaPersona"] != null)
              {
                
                foreach (Negocio.Persona p in listaPersona.Where(p => p.Apellido.Equals(txtApellido.Text,StringComparison.OrdinalIgnoreCase)))
                {
                  Response.Write("<tr>");
                  Response.Write("<td class=auto-style1>" + p.TipoPersona +"</td>");
                  Response.Write("<td class=auto-style2>" + p.Nombre+"</td>");
                  Response.Write("<td class=auto-style1>" +p.Apellido+"</td>");
                  Response.Write("<td class=auto-style1>" +p.Ciudad+"</td>");
                  Response.Write("<td class=auto-style1>" +p.Correo+"</td>");
                  Response.Write("<td class=auto-style1>" +p.Telefonos+"</td>");                  
                  Response.Write("</tr>");
                }
               }
               else
               {
                     Response.Redirect("index.aspx");
               }              
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            
        }

        public void eliminarPersona()
        {
            List<Negocio.Persona> listaPersona = (List<Negocio.Persona>)Session["listaPersona"];
            if(Session["listaPersona"] != null)
            {
                for(int i = 0;i < listaPersona.Count; i++)
                {
                    listaPersona.RemoveAt(i);
                }
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            eliminarPersona();
        }
        protected void btnModificar_Click(object sender, EventArgs e)
        {
            List<Negocio.Persona> listaPersona = (List<Negocio.Persona>)Session["listaPersona"];
            if (Session["listaPersona"] != null)
            {
                for (int i = 0; i < listaPersona.Count; i++)
                {
                    if(listaPersona.ElementAt(i).Rut != null)
                    {
                        Session["personaAModificar"] = listaPersona;
                        Response.Redirect("ModificarContacto.aspx");
                    }
                }
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
    }
}