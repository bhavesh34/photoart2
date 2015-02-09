using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Threading;



namespace SignalRChat
{
    public partial class LOGIN : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cm;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (DropDownList1.SelectedItem.Value==1.ToString())
            {
                //seller
                cm = new SqlCommand("select email_id,password from seller where email_id=@email and password=@password", con);
                cm.Parameters.AddWithValue("@email", TextBox1.Text);
                cm.Parameters.AddWithValue("@password", TextBox2.Text);
                // cm.CommandType = CommandType.StoredProcedure;

                con.Open();
                SqlDataReader rd = cm.ExecuteReader();
                
                
                if (rd.HasRows)
                {
                    Session["username"] = TextBox1.Text;
                    Session["password"] = TextBox2.Text;
                    Response.Redirect("Add_product.aspx");
                }
                else
                {
                    Label1.Visible = true;
                }
               

            }
            else if(DropDownList1.SelectedItem.Value==2.ToString())
            {
            //buyer
                cm = new SqlCommand("select email,password from buyer where email=@email and password=@password", con);
                cm.Parameters.AddWithValue("@email", TextBox1.Text);
                cm.Parameters.AddWithValue("@password", TextBox2.Text);
                // cm.CommandType = CommandType.StoredProcedure;

                con.Open();
                SqlDataReader rd = cm.ExecuteReader();


                if (rd.HasRows)
                {
                    Session["username_buy"] = TextBox1.Text;
                    Session["password_buy"] = TextBox2.Text;
                    Response.Redirect("ProductsPage.aspx");
                }
                else
                {
                    Label1.Visible = true;
                }
            }
            Thread.Sleep(2000);
        }
    }
}