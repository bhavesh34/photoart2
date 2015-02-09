using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class SetTimeForAuction : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Unnamed_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cm = new SqlCommand("update auction_reg set start_time=@st,end_time=@et",con);
        cm.Parameters.AddWithValue("@st",Convert.ToDateTime(TextBox1.Text));
        cm.Parameters.AddWithValue("@et", Convert.ToDateTime(TextBox2.Text));

        con.Open();
        cm.ExecuteNonQuery();
        con.Close();
    }
}