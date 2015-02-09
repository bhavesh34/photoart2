using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["usnm"] != null && Session["Ip"] != null)
        {
            Label1.Text = "welcome" +"&nbsp" + Session["usnm"];
            Label2.Text = "you are logged in from" + "&nbsp" + Session["Ip"];
        }
    }
}
