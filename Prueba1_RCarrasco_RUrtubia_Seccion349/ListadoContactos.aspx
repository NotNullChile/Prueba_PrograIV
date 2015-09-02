<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoContactos.aspx.cs" Inherits="Prueba1_RCarrasco_RUrtubia_Seccion349.ListadoContactos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 117px;
        }
        .auto-style2 {
            width: 162px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Listado de contactos<br />
        <br />
        Busquedas<asp:Panel ID="Panel1" runat="server" Height="74px">
            Apellidos:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cliente por dominio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Proveedores Ciudad:<br />
            <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtDomino" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCiudad" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="126px" OnClick="btnBuscar_Click" />
        </asp:Panel>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Tipo</td>
                <td class="auto-style2">Nombre</td>
                <td>Apellido</td>
                <td>Ciudad</td>
                <td>Correo</td>
                <td>Teléfono</td>
            </tr>
            
               <%
                   cargarListado();
                   if (txtApellido.Text.Length > 0)
                   {
                       listadoBusquedasPorApellido();
                   }
                   List<Negocio.Persona> listaPersona = (List<Negocio.Persona>)Session["listaPersona"];
                   if (Session["listaPersona"] != null)
                   {
                       string rut = null;
                       foreach (Negocio.Persona p in listaPersona)
                       {
                          %>
                           <td>
                            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" value="<%=p.Rut %>" OnClick="btnEliminar_Click"/>
                            </td>
                            <td>
                            <asp:Button ID="btnModificar" runat="server" Text="Modificar" value="<%=p.Rut %>" OnClick="btnModificar_Click" />
                            </td>
                            
                          <%    
                          

                       }
                   }
                   
               %>
                    
                        
           
        </table>
    
    </div>
    </form>
</body>
</html>
