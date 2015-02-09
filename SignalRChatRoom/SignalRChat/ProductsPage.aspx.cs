using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignalRChat
{
    public partial class ProductsPage : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void WD1_Click(object sender, EventArgs e)
        {

        }

        //protected void Image2_Click(object sender, ImageClickEventArgs e)
        //{
        //    try
        //    {
               
        //        id = Convert.ToInt32(DataList1.DataKeys[DataList1.SelectedIndex]);
               

        //        Response.Redirect("ProductDetails.aspx?id=" + id);
                

        //    }
        //    catch 
        //    {
                
        //    }
          
         
        //}

        //protected void DataList1_SelectedIndexChanged(object sender, CommandEventArgs e)
        //{
            
        //}

        protected void Image2_Command(object sender, CommandEventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
           DataList1.SelectedIndex = e.Item.ItemIndex;
        }

        protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            id = Convert.ToInt32(DataList1.DataKeys[DataList1.SelectedItem.ItemIndex]);
            Response.Redirect("ProductDetails.aspx?id="+id);  
        }
    }
}