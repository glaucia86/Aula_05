<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consulta.aspx.cs" Inherits="Site.Pages.Consulta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>Consulta de Clientes</h3>

        <p>
            <a href="../Default.aspx">Voltar</a>
        </p>

        <asp:GridView ID="gridClientes" runat="server" Width="80%"> </asp:GridView>

        <p>
            <asp:Label ID="lblMensagem" runat="server" />
        </p>
    </div>
    </form>
</body>
</html>
