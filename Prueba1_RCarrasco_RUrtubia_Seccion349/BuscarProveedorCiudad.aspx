<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuscarProveedorCiudad.aspx.cs" Inherits="Prueba1_RCarrasco_RUrtubia_Seccion349.BuscarContacto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblBuscarProveedorCiudad" runat="server" Font-Bold="True" Font-Underline="True" Text="Buscar Proveedor por Ciudad"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblEscribaCiudad" runat="server" Text="Escriba ciudad"></asp:Label>
        <asp:TextBox ID="txtCiudadABuscar" runat="server"></asp:TextBox>
        <asp:Button ID="btnBuscarProveedorCiudad" runat="server" Text="Buscar" />
    
    </div>
    </form>
</body>
</html>
