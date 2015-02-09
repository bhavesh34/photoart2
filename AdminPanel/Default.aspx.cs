using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Net;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cm = new SqlCommand("StoredProcedure2",con);
        cm.CommandType = CommandType.StoredProcedure;
        cm.Parameters.AddWithValue("@usnm", TextBox1.Text);
        cm.Parameters.AddWithValue("@pass",TextBox2.Text);

        con.Open();
        SqlDataReader rd = cm.ExecuteReader();
        if (rd.HasRows)
        {
            Session["usnm"] = TextBox1.Text;
            Session["pass"] = TextBox2.Text;
            string hostName = Dns.GetHostName(); // Retrive the Name of HOST
            string myIP = Dns.GetHostByName(hostName).AddressList[0].ToString();
            Session["Ip"] = myIP;    
            Response.Redirect("DashBoard.aspx");

        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Opps There might be some problem with your credentials";
        }
        con.Close();
    }
}