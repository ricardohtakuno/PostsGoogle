<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
    </title>
<link rel ="stylesheet" type ="text/css" href ="Layout.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2 id="lblCabecalho">Sistema de Post</h2>
        <asp:HyperLink ID="hplCadastrarNovoPost" runat="server" NavigateUrl="~/Cadastrar.aspx">Cadastrar novo post</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="hplCadastrarAutor" runat="server" NavigateUrl="~/CadastroAutor.aspx">Cadastrar autor</asp:HyperLink>
        <br />
        <br />
        <asp:Label ID="lblListagemdePosts" runat="server" Text="Listagem de Posts"></asp:Label>
        <strong><br />
        </strong>
        <br />
        <asp:DataList ID="dtlPosts" runat="server">
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("titulo") %>'></asp:Label>
                &nbsp;-
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("autor") %>'></asp:Label>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("ID","VerPosts.aspx?id={0}") %>' Text='<%# "Ver Posts" %>'></asp:HyperLink>
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# Eval("ID","Alterar.aspx?id={0}") %>' Text='<%# "Alterar" %>'></asp:HyperLink>
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# Eval("ID","Excluir.aspx?id={0}") %>' Text='<%# "Excluir" %>'></asp:HyperLink>
            </ItemTemplate>
        </asp:DataList>
        <br />
    </div>
    </form>
</body>
</html>
