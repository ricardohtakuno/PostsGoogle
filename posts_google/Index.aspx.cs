using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack){
            using (SqlConnection con = new SqlConnection("Server=ame0556344w10-1\\sqlexpress;Database=DB_GOOGLE;Trusted_Connection=Yes;"))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM TB_POSTS", con))
                {
                    con.Open();
                    dtlPosts.DataSource = cmd.ExecuteReader();
                    dtlPosts.DataBind();
                }
            }
        }
    }
}