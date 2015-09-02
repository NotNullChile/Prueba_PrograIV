<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Prueba1_RCarrasco_RUrtubia_Seccion349.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table >
            <tr>
                <td><a href="index.aspx">Volver al inicio</a></td>
                <td></td>
                <td><a href="agregarContacto.aspx">Agregar un nuevo contacto</a></td>
                <td></td>
                <td><a href="ListadoContactos.aspx">Modificar/Eliminar/Buscar contactos</a></td>
                <td></td>
                <td><a href="listadoTelefonico.aspx">Listado Telefónico</a></td>
            </tr>
        </table>
        <br /><br /><br />
        
        <br />
        <asp:Label Text="text" runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="True" ForeColor="#000066">Bienvenido al sistema de contactos</asp:Label>
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
                     <a href="ListadoContactos.aspx">Modificar/Eliminar/Buscar Contactos</a>
                </td>
                <td>
                    Permite buscar y seleccionar un contacto existente para eliminarlo o modificar sus datos.
                </td>
            </tr>
            <tr>
                <td>
                     <a href="listadoTelefonico.aspx">Listado Telefónico</a>
                </td>
                <td>
                    Permite ver un listado telefónico de clientes y proovedores.
                </td>
            </tr>
        </table>
        

    </div>
    </form>
</body>
</html>
