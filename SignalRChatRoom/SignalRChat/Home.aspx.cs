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
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlDataAdapter da; 
        DataSet ds= new DataSet();
        SqlCommand cm;
        string start;
        string end;

        protected void Page_Load(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("select * from catagory",con);
            da.Fill(ds);
            DropDownList3.DataSource = ds;
            DropDownList3.DataTextField = "cat_name";
            DropDownList3.DataValueField = "id";
            DropDownList3.DataBind();
            con.Open();
            con.Close();

            LinkButton4.Visible = false;
             con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            cm = new SqlCommand("select start_time,end_time from auction_reg", con);
            con.Open();
            SqlDataReader dr = cm.ExecuteReader();
            while (dr.Read())
            {
                start = dr[0].ToString();
                end = dr[1].ToString();
            }

            if (DateTime.Now >= Convert.ToDateTime(start) && DateTime.Now <= Convert.ToDateTime(end))
            {
                LinkButton4.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["keyword"] = TextBox1.Text;
            Session["cat"] = Convert.ToInt32(DropDownList3.SelectedItem.Value);
            Session["price"] = Convert.ToInt32(DropDownList1.SelectedItem.Value);
            Session["price2"] = Convert.ToInt32(DropDownList2.SelectedItem.Value);
            Server.Transfer("FitCat.aspx");

        }
    }
}