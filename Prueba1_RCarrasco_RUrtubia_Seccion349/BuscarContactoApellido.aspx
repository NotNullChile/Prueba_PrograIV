<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuscarContactoApellido.aspx.cs" Inherits="Prueba1_RCarrasco_RUrtubia_Seccion349.BuscarContacto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:Label ID="lblBuscarContactoApellido" runat="server" Font-Bold="True" Font-Underline="True" Text="Buscar Contacto por Apellido"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblEscribaApellido" runat="server" Text="Escriba apellido"></asp:Label>
        <asp:TextBox ID="txtApellidoABuscar" runat="server"></asp:TextBox>
        <asp:Button ID="btnBuscarApellido" runat="server" Text="Buscar" />
        
    </div>
    </form>
</body>
</html>
