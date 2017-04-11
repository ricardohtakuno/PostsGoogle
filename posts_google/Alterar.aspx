<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Alterar.aspx.cs" Inherits="Alterar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Site de Posts</title>
    <link rel ="stylesheet" type ="text/css" href ="Layout.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="titulo">
    
        <h2>Sistema de Post - Alterar</h2>
    
    </div>
        <div id="area">
        <fieldset>
        <div class="campo">
        <asp:Label ID="Label2" runat="server" Text="Código: "></asp:Label>
        <asp:Label ID="lblId" runat="server" Text="Label"></asp:Label>
        </div>
        <br />
        <div class="campo">
        <asp:Label ID="Label3" runat="server" Text="Autor: "></asp:Label>
        <asp:TextBox ID="txtAutor" style="width: 300px" runat="server"></asp:TextBox>
        </div>
        <br />
        <div class="campo">
        <asp:Label ID="Label5" runat="server" Text="Título: "></asp:Label>
        <asp:TextBox ID="txtTitulo" style="width: 300px" runat="server"></asp:TextBox>
        </div>
        <br />
        <div class="campo">
        <asp:Label ID="Label7" runat="server" Text="Conteúdo: "></asp:Label>
        <asp:TextBox ID="txtConteudo" runat="server" Width="300px" Height="200px"></asp:TextBox>
        </div>
        <br />
        <br />
        <br />
        <asp:Label ID="lblErro" runat="server" Text="Mensagem"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnAlterar" runat="server" OnClick="btnAlterar_Click" class="botao" Text="Alterar" />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Index.aspx">Voltar</asp:HyperLink>
        </fieldset>
        </div>
    </form>
</body>
</html>
