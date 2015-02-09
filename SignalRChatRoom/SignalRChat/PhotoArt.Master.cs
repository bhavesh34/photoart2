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
    public partial class PhotoArt : System.Web.UI.MasterPage
    {
        string start;
        string end;
        protected void Page_Load(object sender, EventArgs e)
        {
            LinkButton4.Visible = false;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            SqlCommand cm = new SqlCommand("select start_time,end_time from auction_reg",con);
            con.Open();
            SqlDataReader dr = cm.ExecuteReader();
            while (dr.Read())
            {
                start = dr[0].ToString();
                end = dr[1].ToString();
            }

            if (DateTime.Now>=Convert.ToDateTime(start) && DateTime.Now<=Convert.ToDateTime(end))
            {
                LinkButton4.Visible = true;
            }
        }

        protected void Lb11_Click(object sender, EventArgs e)
        {
            Lb11.CssClass = "active";
            Response.Redirect("home.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton1.CssClass = "active";
            Response.Redirect("ProductsPage.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            LinkButton2.CssClass = "active";
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            LinkButton3.CssClass = "active";
            Response.Redirect("Register.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["keyword"] = TextBox1.Text;
            Session["cat"] = Convert.ToInt32(DropDownList3.SelectedItem.Value);
            Session["price"] = Convert.ToInt32(DropDownList1.SelectedItem.Value);
            Session["price2"] = Convert.ToInt32(DropDownList2.SelectedItem.Value);
            Server.Transfer("FitCat.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Auction_Page.aspx");

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register_auc.aspx");
        }
    }
}