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
    public partial class Popup : System.Web.UI.Page
    {
        int buyer_id;
        int id;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cm;
        SqlCommand cm1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"]==null && Session["buyer"]==null)
            {
                Response.Redirect("Auction_Page.aspx");

               
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            try
            {
                if (IsPostBack)
                {
                    if (Session["id"] != null && Session["buyer"] != null)
                    {
                        cm1 = new SqlCommand("select last_bidvalue from bid_transaction", con);
                        con.Open();
                        SqlDataReader dr = cm1.ExecuteReader();
                        while (dr.Read())
                        {
                            if (Convert.ToInt32(dr[0]) < Convert.ToInt32(TextBox1.Text))
                            {
                                id = Convert.ToInt32(Session["id"]);
                                buyer_id = Convert.ToInt32(Session["buyer"]);
                                con.Close();
                                cm = new SqlCommand("update bid_transaction set last_bidvalue=@bv, buy_id=@id", con);
                                cm.Parameters.AddWithValue("@bv", Convert.ToInt64(TextBox1.Text));
                                cm.Parameters.AddWithValue("@id", buyer_id);
                                con.Open();
                                cm.ExecuteNonQuery();
                                con.Close();
                                break;
                            
                            }
                            else
                            {
                                Label1.Text = "Plz enter greater bid value this value is smaller than current bid value";
                            
                            }
                        }

                        con.Close();


                    }
                    else
                    {
                        Response.Redirect("Auction_page.aspx");
                    }

                }
            }
            catch
            {
               // Label1.Text = "server error plz try again";

            }
        }
    }
}