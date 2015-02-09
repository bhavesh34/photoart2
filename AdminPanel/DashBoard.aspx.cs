using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class DashBoard : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext db = new DataClassesDataContext();
        if (Session["usnm"] != null && Session["Ip"] != null)
        {

        }
      
        else
        {
            Response.Redirect("Default.aspx");

        }

        con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlCommand cm = new SqlCommand("StoredProcedure3", con);
        cm.CommandType = CommandType.StoredProcedure;
        con.Open();
        dr = cm.ExecuteReader();
        string str=null;
        while (dr.Read())
        {
             str = dr[0].ToString();
        }

        if (str==null)
        {
            lbn1.Text="you have no pending orders";
        }
        else
        {
            lbn1.Text = "You have &nbsp" + str + "&nbsp orders pending";
        }
        con.Close();

        //StoredProcedure4

        con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        cm = new SqlCommand("StoredProcedure4", con);
        cm.CommandType = CommandType.StoredProcedure;
        con.Open();
        dr = cm.ExecuteReader();
        string str1 = null;
        while (dr.Read())
        {
            str1 = dr[0].ToString();
        }

        if (str1 == null)
        {
            Lbl2.Text = "you have no sellers";
        }
        else
        {
            Lbl2.Text = /*"You have &nbsp" +*/ str1 + "&nbsp sellers";
        }
        con.Close();
        //StoredProcedure5
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        cm = new SqlCommand("StoredProcedure5", con);
        cm.CommandType = CommandType.StoredProcedure;
        con.Open();
        dr = cm.ExecuteReader();
        string str2 = null;
        while (dr.Read())
        {
            str2 = dr[0].ToString();
        }

        if (str2 == null)
        {
            LinkButton1.Text = "you have no buyers at present";
        }
        else
        {
           LinkButton1.Text = /*"You have &nbsp" +*/ str2 + "&nbsp buyers";
        }
        con.Close();
        //StoredProcedure6
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        cm = new SqlCommand("StoredProcedure6", con);
        cm.CommandType = CommandType.StoredProcedure;
        con.Open();
        dr = cm.ExecuteReader();
        string str3 = null;
        while (dr.Read())
        {
            str3 = dr[0].ToString();
        }

        if (str3 == null)
        {
            Link2.Text = "you have no buyers at present";
        }
        else
        {
            Link2.Text = /*"You have &nbsp" +*/ str3 + "&nbsp prodcuts";
        }
        con.Close();
        

    //if (str == null)
    //    {
    //        str = "No Pending orders";
    //    }
    //    lbn1.Text = str + "Pending order";
    }
}