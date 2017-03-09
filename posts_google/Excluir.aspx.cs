using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Excluir : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string codigo = Request.QueryString["id"];
        lblId.Text = codigo;

        using (SqlConnection con = new SqlConnection("Server=ame0556344w10-1\\sqlexpress;Database=DB_GOOGLE;Trusted_Connection=Yes;"))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM TB_POSTS where id = " + codigo, con))
            {
                try
                {
                    con.Open();
                    SqlDataReader sdrInfPosts = cmd.ExecuteReader();
                    sdrInfPosts.Read();
                    lblAutor.Text = sdrInfPosts.GetString(2);
                    lblTitulo.Text = sdrInfPosts.GetString(1);
                    lblConteudo.Text = sdrInfPosts.GetString(3);
                }
                catch
                {
                    //mensagem de erro
                    lblErro.Text = "Erro de banco de dados. Contate o suporte.";
                }
            }
        }
    }

    protected void btnSim_Click(object sender, EventArgs e)
    {
        string codigo = Request.QueryString["id"];
        
        using (SqlConnection con = new SqlConnection("Server=ame0556344w10-1\\sqlexpress;Database=DB_GOOGLE;Trusted_Connection=Yes;"))
        {
            using (SqlCommand cmd = new SqlCommand("DELETE FROM TB_POSTS where id = " + codigo, con))
            {
                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblAutor.Text = "";
                    lblTitulo.Text = "";
                    lblConteudo.Text = "";
                    lblId.Text = "";

                    lblErro.Text = "Post excluido com sucesso. CLICK no voltar para retornar à tela inicial.";
                }
                catch
                {
                    //mensagem de erro
                    lblErro.Text = "Erro de banco de dados. Contate o suporte.";
                }
            }
        }
    }
}