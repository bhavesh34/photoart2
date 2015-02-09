using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Users : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cm;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["usnm"] == null && Session["pass"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {

        }
    }
    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        Label id = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("label12");
        cm = new SqlCommand("delete from seller where id=@id", con);
        cm.Parameters.AddWithValue("@id", Convert.ToInt32(id.Text));
        con.Open();
        cm.ExecuteNonQuery();
        DataList1.DataBind();
        con.Close();

    }
    protected void DataList2_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        Label id1 = (Label)DataList2.Items[e.Item.ItemIndex].FindControl("label132");
        cm = new SqlCommand("delete from buyer where id=@id", con);
        cm.Parameters.AddWithValue("@id", Convert.ToInt32(id1.Text));
        con.Open();
        cm.ExecuteNonQuery();
        DataList2.DataBind();
        con.Close();
    }
}