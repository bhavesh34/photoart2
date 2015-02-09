using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SignalRChat
{
    public partial class Register_auc : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cm;
        DataTable dt = new DataTable();
        SqlDataReader dr;
        int id = 0;
        SqlCommand sqlcm;
        int pid;
        int last;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"]!=null && Session["password"]!=null)
            {
                cm = new SqlCommand("select id from seller where email_id=@email",con);
                cm.Parameters.AddWithValue("@email",Session["username"].ToString());
               // da = new SqlDataAdapter(cm);
                con.Open();
                dr = cm.ExecuteReader();
                while (dr.Read())
                {
                    id = Convert.ToInt32(dr[0]);   
                }
                con.Close();
            }
            else
            {
                Response.Redirect("LOGIN.aspx");
            }
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            try
            {

                cm = new SqlCommand("insert into auction_reg (product_name,sid,image,product_descp,Starting_bid) values (@pnm,@sid,@img,@pds,@stbid)", con);
                cm.Parameters.AddWithValue("@pnm", TextBox1.Text);
                cm.Parameters.AddWithValue("@sid", id);
                string name = file.PostedFile.FileName;
                string url = Server.MapPath("/Auction_pic/" + name);
                file.SaveAs(url);

                cm.Parameters.AddWithValue("@img", "~/Auction_pic/" + name);
                cm.Parameters.AddWithValue("@pds", TextBox2.Text);
                cm.Parameters.AddWithValue("@stbid",TextBox3.Text);
                con.Open();
                cm.ExecuteNonQuery();
                cm = new SqlCommand("select * from auction_reg where sid=@sid",con);
                cm.Parameters.AddWithValue("@sid",id);
                SqlDataReader dr = cm.ExecuteReader();
                
                while (dr.Read())
                {

                    pid = Convert.ToInt32(dr[0]);
                    last = Convert.ToInt32(dr[7]);

                }

                con.Close();
                sqlcm = new SqlCommand("insert into bid_transaction (p_id,last_bidvalue) values (@pid,@las)",con);
                sqlcm.Parameters.AddWithValue("@pid",pid);
                sqlcm.Parameters.AddWithValue("@las",last);
 //.               Response.Redirect("#");
                con.Open();
                sqlcm.ExecuteNonQuery();
                con.Close();
            }
            catch 
            {
                
                Response.Write("Oops failed plz try again");
            }
        }
    }
}