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
        <Table>
            <tr>
                <td>
                    <asp:Label ID="lblTipoContato" runat="server" Text="Tipo de Contacto"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="ddlTipoContacto" runat="server">
                        <asp:ListItem>Cliente</asp:ListItem>
                        <asp:ListItem>Proveedor</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:label text="Rut" ID="lblRut" runat="server" />
                </td>
                <td>
                    <asp:TextBox ID="txtRut" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:label text="Nombre" ID="lblNombre" runat="server" />
                </td>
                <td>
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="validNombre" runat="server" ErrorMessage="Debe ingresar un nombre" ControlToValidate="txtNombre"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblApellido" runat="server" Text="Apellido"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                </td>
              </tr>
              <tr>
                <td>
                    <asp:Label ID="lblCiudad" runat="server" Text="Ciudad"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCiudad" runat="server"></asp:TextBox>
                </td>

              </tr><tr>
                <td>
                    <asp:Label ID="lblCorreo" runat="server" Text="Correo"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                </td>

                   </tr>
                <tr>
                <td>
                    <asp:Label ID="lblTelefono" runat="server" Text="Telefono"></asp:Label>
                </td>
                    <td>
                    <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                </td><td>
                    <asp:Button ID="btnNuevoTelefono" runat="server" Text="Agregar Otro Teléfono" OnClick="Button1_Click" />
                </td></tr>
                <tr>
                <td>
                     <asp:Button ID="btnAgregarContacto" runat="server" Text="Agregar Contacto" OnClick="btnAgregarContacto_Click" />
                </td></tr></Table></div></form></body></html>