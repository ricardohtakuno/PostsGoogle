<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CadastroAutor.aspx.cs" Inherits="CadastroAutor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style2 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h2 style="text-align: center">Cadastro de Autores</h2>
        <p style="text-align: center">
            <asp:HyperLink ID="hplVoltardoCadastro" runat="server" NavigateUrl="~/index.aspx">&lt;&lt;Voltar</asp:HyperLink>
        </p>
        <p class="auto-style2">
&nbsp;
            <asp:Label ID="lblNome" runat="server" Text="Nome:"></asp:Label>
            <asp:TextBox ID="txtbNome" runat="server" Width="204px"></asp:TextBox>
        </p>
        <p style="text-align: left">
            <asp:Label ID="lblEmail" runat="server" Text="E-mail:"></asp:Label>
            <asp:TextBox ID="txtbEmail" runat="server" Width="204px"></asp:TextBox>
        </p>
        <p style="text-align: left">
            <asp:Label ID="lblCidade" runat="server" style="text-align: left" Text="Cidade:"></asp:Label>
            <asp:TextBox ID="txtbCidade" runat="server" Width="196px"></asp:TextBox>
        </p>
        <p style="text-align: left" id="lblEstado">
            <asp:Label ID="lblEstado" runat="server" style="text-align: left" Text="Estado:"></asp:Label>
            <asp:TextBox ID="txtbEstado" runat="server"></asp:TextBox>
        </p>
        <p style="text-align: left">
            <asp:Label ID="lblBio" runat="server" style="text-align: left" Text="Bio:"></asp:Label>
            <asp:TextBox ID="txtbBio" runat="server" Height="260px" TextMode="MultiLine" Width="573px"></asp:TextBox>
        </p>
        <p style="text-align: left">
            <asp:Button ID="btnCadastrar" runat="server" OnClick="btnCadastrar_Click" Text="Cadastrar" />
        </p>
        <p style="text-align: center">
            <asp:Label ID="lblMensagem" runat="server"></asp:Label>
        </p>
        <p style="text-align: center">
            &nbsp;</p>
        <p style="text-align: center">
            <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-style: italic" Text="Desenvolvido por Ricardo Takuno"></asp:Label>
        </p>
    
    </div>
    </form>
</body>
</html>
