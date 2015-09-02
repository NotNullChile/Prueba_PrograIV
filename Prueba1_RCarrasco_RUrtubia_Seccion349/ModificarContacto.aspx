<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarContacto.aspx.cs" Inherits="Prueba1_RCarrasco_RUrtubia_Seccion349.ModificarContacto" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
    <div>
    
        <asp:Label ID="lblModificarContacto" runat="server" Font-Bold="True" Font-Underline="True" Text="Modificar Contacto"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <table>
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
                    <asp:TextBox ID="txtRut" runat="server" OnTextChanged="txtRut_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valRut" runat="server" ControlToValidate="txtRut" ErrorMessage="Debe Ingresar un RUT" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:label text="Nombre" ID="lblNombre" runat="server" />
                </td>
                <td>
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="validNombre" runat="server" ErrorMessage="Debe Ingresar un Nombre" ControlToValidate="txtNombre" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblApellido" runat="server" Text="Apellido"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valApellido" runat="server" ControlToValidate="txtApellido" ErrorMessage="Debe Ingresar un Apellido" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCiudad" runat="server" Text="Ciudad"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCiudad" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCiudad" ErrorMessage="Debe Ingresar una Ciudad" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCorreo" runat="server" Text="Correo"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Debe Ingresar un Correo Electrónico" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblTelefono" runat="server" Text="Telefono"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTelefono" runat="server" Enabled="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Debe Ingresar un teléfono" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                     <asp:Button ID="btnModificarContacto" runat="server" Text="Modificar Contacto" OnClick="btnModificarContacto_Click"/>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>