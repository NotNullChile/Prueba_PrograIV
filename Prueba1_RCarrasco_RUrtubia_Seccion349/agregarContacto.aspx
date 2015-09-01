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
        <asp:Label ID="lblTipoContato" runat="server" Text="Tipo de Contacto"></asp:Label>
&nbsp;<asp:DropDownList ID="ddlTipoContacto" runat="server">
            <asp:ListItem>Cliente</asp:ListItem>
            <asp:ListItem>Proveedor</asp:ListItem>
        </asp:DropDownList>
        <br />
        Nombre<asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblApellido" runat="server" Text="Apellido"></asp:Label>
        <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblCiudad" runat="server" Text="Ciudad"></asp:Label>
        <asp:TextBox ID="txtCiudad" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblCorreo" runat="server" Text="Correo"></asp:Label>
        <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Telefono"></asp:Label>
        <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Agregar Otro Teléfono" />
        <br />
        <br />
        <asp:Button ID="btnAgregarContacto" runat="server" Text="Agregar Contacto" />
        <br />
    
    </div>
    </form>
</body>
</html>
