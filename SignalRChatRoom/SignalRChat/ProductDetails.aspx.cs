using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace SignalRChat
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cm;
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        string itemname="";
        string price1 = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Request.QueryString["id"] != null)
            {
                cm = new SqlCommand("select product.pid,product.pname,image,product.product_descp,product.price,seller.name as seller,catagory.cat_name  from product inner join seller on product.seller_id=seller.id inner join catagory on product.cat_id=catagory.id where pid=@pid", con);
                int id = Convert.ToInt32(Request.QueryString["id"]);
                cm.Parameters.AddWithValue("@pid", id);
                da = new SqlDataAdapter(cm);
                da.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();

                con.Open();
                cm.ExecuteNonQuery();
                con.Close();
                con.Open();
                SqlDataReader qw=cm.ExecuteReader();
                while (qw.Read())
                {
                    itemname = qw[1].ToString();
                    price1 = qw[4].ToString();
                }
                con.Close();

            }
            else
            {
                Response.Redirect("ProductsPage.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, ImageClickEventArgs e)
        {

            {
                if (Session["username_buy"] != null && Session["password_buy"] != null)
                {
                    cm = new SqlCommand("select * from buyer where username_buy=@us", con);
                    cm.Parameters.AddWithValue("@us", Session["username_buy"].ToString());
                    da = new SqlDataAdapter(cm);
                    da.Fill(dt);
                    con.Open();
                    cm.ExecuteNonQuery();
                    SqlDataReader dr = cm.ExecuteReader();
                    string s1;
                    string s2;
                    string s3;
                    string s4;
                    string s5;
                    string s6;
                    while (dr.Read())
                    {
                        s1 = dr.GetString(0);
                        s2 = dr.GetString(1);
                        s3 = dr.GetString(2);
                        s4 = dr.GetString(3);
                        s5 = dr.GetString(4);
                        s6 = dr.GetString(5);
                    }

                    con.Close();
                }




            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["username_buy"] != null && Session["password_buy"] != null)
            {
                cm = new SqlCommand("select * from buyer where email=@us", con);
                cm.Parameters.AddWithValue("@us", Session["username_buy"].ToString());
                da = new SqlDataAdapter(cm);
                da.Fill(dt);
                con.Open();
                cm.ExecuteNonQuery();
                SqlDataReader dr = cm.ExecuteReader();
              var q=0;
                string s2;
                string s3;
                string s4;
                string s5;
                string s6;
                while (dr.Read())
                {
                     q = Convert.ToInt32(dr[0]);
                    s2 = dr.GetString(1);
                    s3 = dr.GetString(2);
                    s4 = dr.GetString(3);
                    s5 = dr.GetString(4);
                    s6 = dr.GetString(5);
                   

                }
                string redirecturl = "";
                redirecturl += "https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_xclick&business=" + "cbhavesh34-facilitator@gmail.com";
                redirecturl += "&item_name_=" + itemname;
                redirecturl += "&amount=" + 500;

                Response.Redirect(redirecturl);

                
                con.Close();
            }
            else
            {
                Response.Redirect("LOGIN.aspx");
            }
            

        }
    }
}