<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="Site.Pages.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>Cadastro de Clientes</h3>

        <p>
            <a href="../Default.aspx">Voltar</a>
        </p>

        Nome do Cliente: <br />
        <asp:TextBox ID="txtNome" runat="server" />
        <asp:RequiredFieldValidator 
            ID="requiredNome" 
            runat="server"
            ControlToValidate="txtNome"
            ErrorMessage="Insira o seu nome, por favor."
            ForeColor="Red"
            />
        <br />
        <br />

        Email do Cliente:<br />
        <asp:TextBox ID="txtEmail" runat="server" />
        <asp:RequiredFieldValidator 
            ID="requiredEmail"
            runat="server"
            ControlToValidate="txtEmail"
            ErrorMessage="Insira o seu email, por favor."
            ForeColor="Red"
            />
        <asp:RegularExpressionValidator 
            ID="regexEmail"
            runat="server"
            ControlToValidate="txtEmail"
            ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"
            ErrorMessage="Email Inválido"
            ForeColor="Red"
            />
        <br />
        <br />

        <p>
            <asp:Label ID="lblMensagem" runat="server" />
        </p>

        <asp:Button ID="btnCadastro" runat="server" Text="Cadastrar" OnClick="btnCadastrarCliente" />
        <asp:Button ID="btnLimpa" runat="server" Text="Limpar" OnClick="btnLimpar" />
    </div>
    </form>
</body>
</html>
