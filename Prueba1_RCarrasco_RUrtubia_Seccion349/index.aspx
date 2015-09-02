<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Prueba1_RCarrasco_RUrtubia_Seccion349.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1"></asp:Menu>
        <asp:SiteMapDataSource runat="server" ID="SiteMapDataSource1"></asp:SiteMapDataSource>
        <br />
        <asp:Label Text="text" runat="server" >Bienvenido al sistema de contactos</asp:Label>
        <br /><br /><br /><br /><br />
        <table>
            <tr>
                <td>
                     <a href="agregarContacto.aspx">Agregar un Nuevo Contacto</a>
                </td>
                <td>
                    Permite agregar un nuevo contacto.
                </td>
            </tr>
            <tr>
                <td>
                     <a href="ModificarContacto.aspx">Modificar Contacto</a>
                </td>
                <td>
                    Permite modificar los datos básicos de un contacto.
                </td>
            </tr>
        </table>
        

    </div>
    </form>
</body>
</html>
