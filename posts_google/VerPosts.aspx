<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VerPosts.aspx.cs" Inherits="VerPosts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h2>Sistema de Post</h2>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Código: "></asp:Label>
        <asp:Label ID="lblId" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Autor: "></asp:Label>
        <asp:Label ID="lblAutor" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Título: "></asp:Label>
        <asp:Label ID="lblTitulo" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Conteúdo: "></asp:Label>
        <asp:Label ID="lblConteudo" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Index.aspx">Voltar</asp:HyperLink>
        <br />
        <br />
        <br />
        <asp:Label ID="lblErro" runat="server" Text="Mensagem"></asp:Label>
    </form>
</body>
</html>
