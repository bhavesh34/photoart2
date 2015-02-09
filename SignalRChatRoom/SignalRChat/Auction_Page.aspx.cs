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
    public partial class Auction_Page : System.Web.UI.Page
     {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cm;
        SqlCommand cm1;
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        static long bid;
        int buy_id;
        string start, end;
        protected void Page_Load(object sender, EventArgs e)
        {
         
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
                
            }

            else
            {
                Response.Redirect("Home.aspx");
            }
            con.Close();
            if (Session["username_buy"]!=null && Session["password_buy"]!=null)
            {
                 da = new SqlDataAdapter("select bid_transaction.id,buyer.NAME as buyer_name,bid_transaction.last_bidvalue as final_bid,auction_reg.Starting_bid,auction_reg.product_name as pname,auction_reg.image as pimage,auction_reg.Product_descp as descrption,bid_transaction.last_bidvalue from bid_transaction inner join auction_reg on bid_transaction.p_id=auction_reg.id inner join buyer on bid_transaction.buy_id=buyer.id",con);
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();

            con.Open();

            cm1 = new SqlCommand("select id from buyer where email=@email and password=@password",con);
            cm1.Parameters.AddWithValue("@email",Session["username_buy"].ToString());
            cm1.Parameters.AddWithValue("@password", Session["password_buy"].ToString());

             dr = cm1.ExecuteReader();

            while (dr.Read())
            {
                buy_id = Convert.ToInt32(dr[0]);
            }
            con.Close();
            }

            else
            {
                Response.Redirect("LOGIN.aspx");
            }


        }

     
        protected void Timer1_Tick(object sender, EventArgs e)
        {
          //  da = new SqlDataAdapter("select buyer.NAME as buyer_name,bid_transaction.last_bidvalue as final_bid,auction_reg.Starting_bid,auction_reg.product_name as pname,auction_reg.image as pimage,auction_reg.Product_descp as descrption,bid_transaction.last_bidvalue from bid_transaction inner join auction_reg on bid_transaction.p_id=auction_reg.id inner join buyer on bid_transaction.buy_id=buyer.id", con);
            //da.Fill(dt);
            //DataList1.DataSource = dt;
            DataList1.DataBind();

            //con.Open();

//            con.Close();
        }

        protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
        {
            DataList1.EditItemIndex = e.Item.ItemIndex;
            da = new SqlDataAdapter("select bid_transaction.id,buyer.NAME as buyer_name,bid_transaction.last_bidvalue as final_bid,auction_reg.Starting_bid,auction_reg.product_name as pname,auction_reg.image as pimage,auction_reg.Product_descp as descrption,bid_transaction.last_bidvalue from bid_transaction inner join auction_reg on bid_transaction.p_id=auction_reg.id inner join buyer on bid_transaction.buy_id=buyer.id", con);
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
           
        }

        protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
        {
            DataList1.EditItemIndex = -1;
            da = new SqlDataAdapter("select bid_transaction.id,buyer.NAME as buyer_name,bid_transaction.last_bidvalue as final_bid,auction_reg.Starting_bid,auction_reg.product_name as pname,auction_reg.image as pimage,auction_reg.Product_descp as descrption,bid_transaction.last_bidvalue from bid_transaction inner join auction_reg on bid_transaction.p_id=auction_reg.id inner join buyer on bid_transaction.buy_id=buyer.id", con);
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
        {
            Label bid = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("hp1");
            cm = new SqlCommand("select buyer.id,bid_transaction.id,buyer.NAME as buyer_name,bid_transaction.last_bidvalue as final_bid,auction_reg.Starting_bid,auction_reg.product_name as pname,auction_reg.image as pimage,auction_reg.Product_descp as descrption,bid_transaction.last_bidvalue from bid_transaction inner join auction_reg on bid_transaction.p_id=auction_reg.id inner join buyer on bid_transaction.buy_id=buyer.id where bid_transaction.id=@bid",con);
            cm.Parameters.AddWithValue("@bid",Convert.ToInt32(bid.Text));
            con.Open();
            SqlDataReader dr = cm.ExecuteReader();
            var buyer_name = "";
            while (dr.Read())
            {
                buyer_name = dr[0].ToString();
            }

            Session["id"] = bid.Text;
            Session["buyer"]=buyer_name.ToString();

            con.Close();
            ScriptManager.RegisterStartupScript(this, GetType(), "popUp", "popUp('PopUp.aspx')", true);  
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {

        }

        
    }
}



