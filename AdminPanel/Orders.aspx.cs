using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class Orders: System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cm;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["usnm"]==null && Session["pass"]==null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            
        }
    }
    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        try
        {
            Label id = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("id");
        cm = new SqlCommand("delete from order_info where id=@id",con);
        cm.Parameters.AddWithValue("@id",Convert.ToInt32(id.Text));
        con.Open();
        cm.ExecuteNonQuery();
        DataList1.DataBind();
        con.Close();
      //      string str="alert('sucess');";
        //Page.ClientScript.RegisterStartupScript(typeof(Page),"sucess",str);
        }
        catch 
        {
            string s="alert('sucess');";

          //  ClientScript.RegisterStartupScript(typeof(Page), "Failed", s);
        }
    }
    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {
       
    }
}