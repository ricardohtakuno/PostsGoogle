<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastrar.aspx.cs" Inherits="Cadastrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel ="stylesheet" type ="text/css" href ="Layout.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <div class="titulo">
        <h2>Cadastro de Post</h2>
          <p>&nbsp;</p>
      </div>
     <div id="area">
        <fieldset>
        <div class="campo">
        <asp:Label ID="Label1" runat="server" Text="Autor:"></asp:Label>
&nbsp;<asp:TextBox ID="txtAutor" style="width: 300px" runat="server"></asp:TextBox>
        </div>
        <br />
        <br />
        <div class="campo">
        <asp:Label ID="Label2" runat="server" Text="Título:"></asp:Label>
&nbsp;<asp:TextBox ID="txtTitulo" style="width: 300px" runat="server"></asp:TextBox>
        </div>
        <br />
        <br />
        <div class="campo">
        <asp:Label ID="Label3" runat="server" Text="Conteúdo:"></asp:Label>
&nbsp;<asp:TextBox ID="txtConteudo" runat="server" Height="53px" Width="420px"></asp:TextBox>
        </div>
        <br />
        <br />
        <br />
        <asp:Button ID="btnCadastrar" runat="server" OnClick="btnCadastrar_Click" class="botao" Text="Cadastrar" />
        <br />
        <br />
        <asp:Label ID="lblMensagem" runat="server" Text="Label" OnLoad="lblMensagem_Load"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Index.aspx">Voltar</asp:HyperLink>
        </fieldset>
    </div>
    </form>
</body>
</html>
