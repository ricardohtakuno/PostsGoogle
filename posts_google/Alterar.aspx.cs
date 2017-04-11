using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Alterar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string codigo = Request.QueryString["id"];
            lblId.Text = codigo;

            using (SqlConnection con = new SqlConnection("Server=ricardo-pc\\sqlexpress;Database=DB_GOOGLE;Trusted_Connection=Yes;"))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM TB_POSTS where id = " + codigo, con))
                {
                    try
                    {
                        con.Open();
                        SqlDataReader sdrInfPosts = cmd.ExecuteReader();
                        sdrInfPosts.Read();
                        txtAutor.Text = sdrInfPosts.GetString(2);
                        txtTitulo.Text = sdrInfPosts.GetString(1);
                        txtConteudo.Text = sdrInfPosts.GetString(3);
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

    protected void btnAlterar_Click(object sender, EventArgs e)
    {
        string codigo = Request.QueryString["id"];

        using (SqlConnection con = new SqlConnection("Server=ame0556344w10-1\\sqlexpress;Database=DB_GOOGLE;Trusted_Connection=Yes"))
        {
            using (SqlCommand cmd = new SqlCommand("UPDATE TB_POSTS SET  TITULO = @TIT, AUTOR =  @AUT, CONTEUDO = @CON WHERE ID = " + codigo, con))
            {
                cmd.Parameters.AddWithValue("TIT", txtTitulo.Text);
                cmd.Parameters.AddWithValue("AUT", txtAutor.Text);
                cmd.Parameters.AddWithValue("CON", txtConteudo.Text);

                try
                {
                    con.Open();
                    if (cmd.ExecuteNonQuery() > -1)
                    {
                        lblErro.Text = "Post cadastrado com sucesso";
                    }
                }
                catch (Exception ex)
                {
                    lblErro.Text = "Houve algum problema: " + ex;
                }
            }
        }
    }
}