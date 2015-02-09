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
    public partial class Add_product : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cm;
        SqlDataAdapter da;
        DataTable dt=new DataTable();
        string id1;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null && Session["password"] != null)
            {
                cm = new SqlCommand("select id from seller where email_id=@email", con);
                cm.Parameters.AddWithValue("@email", Session["username"].ToString());
                da = new SqlDataAdapter(cm);
               da.Fill(dt);
                id1 = dt.Rows[0].ToString();
                con.Open();
                cm.ExecuteNonQuery();
              //SqlDataReader rd = cm.ExeteReader();
               
             
                     id1 = dt.Rows[0][0].ToString();
                
              //  id1=dt.Columns[0].ToString();
         con.Close();    
               
            }
            else
            {
                Response.Redirect("LOGIN.aspx");    
            }

          
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
   cm = new SqlCommand("insert into product (pname,product_descp,price,image,seller_id,cat_id) values (@name,@product,@price,@image,@seller,@cat_id)",con);
            cm.Parameters.AddWithValue("@name",TextBox1.Text);
            cm.Parameters.AddWithValue("@product",TextBox2.Text);
            cm.Parameters.AddWithValue("@price",TextBox3.Text);
            string name = FileUpload1.PostedFile.FileName;
            string url = Server.MapPath("/PAINTINGS/" + name);
            FileUpload1.SaveAs(url);
            cm.Parameters.AddWithValue("@image", "~/PAINTINGS/" + name);
          cm.Parameters.AddWithValue("@seller", Convert.ToInt32(id1));
            cm.Parameters.AddWithValue("@cat_id", DropDownList1.SelectedItem.Value);

            con.Open();
            cm.ExecuteNonQuery();
            con.Close();
 
            }
            catch
            {

                Response.Write("OOPs cant add your products plz check details below");
            }
        }
    }
}