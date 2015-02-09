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
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cm;
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList2.Visible = false;
            DropDownList5.Visible = false;
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList5.Visible = true;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList2.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //seller
            try
            {
                cm = new SqlCommand("insert into seller (name,last_name,cid,sid,ctid,email_id,address,image_url,phone_no,password) values (@name,@last,@cid,@sid,@ctid,@email,@address,@image,@phone_no,@pass)", con);
                cm.Parameters.AddWithValue("@name",TextBox1.Text);
                cm.Parameters.AddWithValue("@last", TextBox2.Text);
                cm.Parameters.AddWithValue("@cid",Convert.ToInt32(DropDownList1.SelectedItem.Value));
                cm.Parameters.AddWithValue("@sid", Convert.ToInt32(DropDownList2.SelectedItem.Value));
                cm.Parameters.AddWithValue("@ctid",1);
                cm.Parameters.AddWithValue("@email",TextBox3.Text);
                cm.Parameters.AddWithValue("@address",TextBox4.Text);
                string name = FileUpload1.PostedFile.FileName;
                string url = Server.MapPath("/seller/" + name);
                FileUpload1.SaveAs(url);
                cm.Parameters.AddWithValue("@image", "~/Photos/" + name);
                cm.Parameters.AddWithValue("@phone_no",TextBox5.Text);
                //1213
                cm.Parameters.AddWithValue("@pass",TextBox12.Text); 
                con.Open();
                cm.ExecuteNonQuery();
                con.Close();
                Response.Redirect("LOGIN.aspx");
            }

            catch 
            {
                Response.Write("OOPs login failed");
            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //buyer
            try{
                cm = new SqlCommand("insert into buyer (NAME,email,phone_no,area_code,cid,sid,ctid,addrerss,password) values (@name,@email,@phone,@area,@cid,@sid,@ctid,@address,@password)", con);
                cm.Parameters.AddWithValue("@name",TextBox6.Text);
                
            cm.Parameters.AddWithValue("@email",TextBox8.Text);
            cm.Parameters.AddWithValue("@phone",TextBox9.Text);
            cm.Parameters.AddWithValue("@area",TextBox10.Text);
                cm.Parameters.AddWithValue("@cid",Convert.ToInt32(DropDownList3.SelectedItem.Value));
                cm.Parameters.AddWithValue("@sid", 1);
                cm.Parameters.AddWithValue("@ctid",1);
             cm.Parameters.AddWithValue("@address",TextBox11.Text);
           cm.Parameters.AddWithValue("@password",TextBox14.Text);
         //  cm.Parameters.AddWithValue("@last", TextBox7.Text);
                con.Open();
                cm.ExecuteNonQuery();
                con.Close();
                Response.Redirect("LOGIN.aspx");
            }

            catch 
            {
                Response.Write("OOPs login failed plz check details above");
            }
        }
    }
}