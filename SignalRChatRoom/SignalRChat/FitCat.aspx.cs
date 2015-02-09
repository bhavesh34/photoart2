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
    public partial class FitCat : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlDataAdapter da;
        DataSet ds=new DataSet();
        SqlCommand cm;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["Keyword"]!=null && Session["cat"]!=null && Session["price"]!=null && Session["price2"]!=null)
            {
                try
                {
cm = new SqlCommand("select * from product where pname=@pname and price>=@price and price<=@price2",con);
                cm.Parameters.AddWithValue("@pname",Session["Keyword"].ToString());
                cm.Parameters.AddWithValue("@price",Session["price"]);
                cm.Parameters.AddWithValue("@price2",Session["price2"]);
                
                con.Open();
                cm.ExecuteNonQuery();
                da = new SqlDataAdapter(cm);
                da.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();
                con.Close();
                }
                catch 
                {

                    Response.Write("ooop failed or no products according to your filter");
                }

            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }

        protected void Image2_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void WD1_Click(object sender, EventArgs e)
        {

        }
    }
}