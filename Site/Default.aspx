<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Site.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>Projeto - Controle de Clientes</h3>

        Escolha uma Opção:
        <asp:DropDownList ID="ddlMenu" runat="server">
            <asp:ListItem Value="1" Text="Cadastrar Clientes"/>
            <asp:ListItem Value="2" Text="Consultar Clientes" />
        </asp:DropDownList>

        <asp:Button ID="btnMenu" runat="server" Text="Acessar" OnClick="btnAcessar" />
    </div>
    </form>
</body>
</html>
