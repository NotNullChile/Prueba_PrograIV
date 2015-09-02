<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="agregarContacto.aspx.cs" Inherits="Prueba1_RCarrasco_RUrtubia_Seccion349.agregarContacto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblAgregarNuevoCliente" runat="server" Font-Bold="True" Font-Underline="True" Text="Agregar Nuevo Cliente"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:Table ID="Table1" runat="server">
            <asp:TableRow>
                <asp:TableCell><asp:Label ID="lblTipoContato" runat="server" Text="Tipo de Contacto"></asp:Label></asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlTipoContacto" runat="server">
                        <asp:ListItem>Cliente</asp:ListItem>
                        <asp:ListItem>Proveedor</asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:label text="Nombre" ID="lblNombre" runat="server" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblApellido" runat="server" Text="Apellido"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblCiudad" runat="server" Text="Ciudad"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtCiudad" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblCorreo" runat="server" Text="Correo"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblTelefono" runat="server" Text="Telefono"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtTelefono" runat="server" Visible="True"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="btnNuevoTelefono" runat="server" Text="Agregar Otro Teléfono" OnClick="Button1_Click" Visible="True" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                     <asp:Button ID="btnAgregarContacto" runat="server" Text="Agregar Contacto" OnClick="btnAgregarContacto_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
            <%if (Session["personaTemporal"] != null)
      {
          Negocio.Persona p = new Negocio.Persona();
          p = (Negocio.Persona)Session["personaTemporal"];
          foreach (Negocio.Telefono t in p.Telefonos)
          {
              Response.Write("<asp:Table>");
              Response.Write("<asp:TableRow>");
              Response.Write("<asp:TableCell class=auto-style1> Teléfono ya agregado: </asp:TableCell>");
              Response.Write("<asp:TableCell class=auto-style1>" + t.Numero + "</asp:TableCell>");
              Response.Write("</asp:TableRow>");
              Response.Write("</asp:Table>");
          }      
      }
      
    %>
    </form>

</body>
</html>
