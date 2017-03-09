using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cadastrar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        using(SqlConnection con  = new SqlConnection("Server=ame0556344w10-1\\sqlexpress;Database=DB_GOOGLE;Trusted_Connection=Yes"))
        {
            using(SqlCommand cmd = new SqlCommand("INSERT INTO TB_POSTS (TITULO, AUTOR, CONTEUDO) VALUES (@TIT, @AUT, @CON)", con))
            {
                cmd.Parameters.AddWithValue("TIT", txtTitulo.Text);
                cmd.Parameters.AddWithValue("AUT", txtAutor.Text);
                cmd.Parameters.AddWithValue("CON", txtConteudo.Text);

                try
                {
                    con.Open();
                    if(cmd.ExecuteNonQuery() > -1)
                    {
                        lblMensagem.Text = "Post cadastrado com sucesso";
                    }
                }
                catch (Exception ex)
                {
                    lblMensagem.Text = "Houve algum problema: " + ex;
                }
            }
        }
    }

    protected void lblMensagem_Load(object sender, EventArgs e)
    {

    }
}