using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CadastroAutor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection("Server=ame0556344w10-1\\sqlexpress (SENACEDU\ricardo.htakuno);Database=DB_GOOGLE;Trusted_Connection=Yes;"))
        {
            using (SqlCommand cmd = new SqlCommand("Insert into tb_autor (nome, email, cidade, estado, bio) VALUES (@nome, @email, @cidade, @estado, @bio)", con))
            {
                cmd.Parameters.AddWithValue("nome", txtbNome.Text);
                cmd.Parameters.AddWithValue("email", txtbEmail.Text);
                cmd.Parameters.AddWithValue("cidade", txtbCidade.Text);
                cmd.Parameters.AddWithValue("estado", txtbEstado.Text);
                cmd.Parameters.AddWithValue("bio", txtbBio.Text);

                try
                {
                    con.Open();
                    if (cmd.ExecuteNonQuery() > -1)
                    {
                        lblMensagem.Text = "Autor cadastrado com sucesso.";
                    }
                }
                catch (Exception ex)
                {
                    lblMensagem.Text = "Erro ao cadastrar um novo autor. \n" + ex.Message;
                }
                finally
                {
                    con.Close();
                }
            }
        }
    }
}