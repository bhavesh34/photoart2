<%@ Page Title="" Language="C#" MasterPageFile="~/PhotoArt.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="SignalRChat.ProductDetails" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        #Button1 {
            border-radius:5px;
        }
        .btn {
              border-radius:5px;
        }
    </style>
    <asp:DataList runat="server" ID="DataList1">
    <ItemTemplate>
        
       <table>
           <tr>
               <td>
                   <td>
                 <center><img runat="server" src='<%#Bind("image") %>' id="image" style="height:300px;width:350px;padding-left:20px"/></center>
                   </td>
               </td>
           </tr>
           <tr>
               <td>
                   <h1 align="cen">Product Information :</h1>
               </td>
               <td>
                   
               </td>
           </tr>
           <tr>
               <td>
                   <span>Prodcut Name</span>
               </td>
               <td>
                   <span><asp:Label runat="server" ID="name" Text='<%#Bind("pname") %>'></asp:Label></span>
               </td>
           </tr>
           <tr>
               <td>
                   <span>Price :</span>
               </td>
               <td>
                
                   <span><asp:Label runat="server" ID="Price" Text='<%#Bind("price") %>'></asp:Label></span>
               </td>
           </tr>
           <tr>
               <td>
                   <span>Description by seller :<span>
               </td>
               <td>
                   <span><asp:Label runat="server" ID="description" Text='<%#Bind("product_descp") %>'></asp:Label></span>
               </td>
           </tr>
          <tr>
              <td>
                  Seller name :
              </td>
              <td>
                  <asp:Label runat="server" ID="sellername" Text='<%#Bind("seller") %>'></asp:Label>
              </td>
          </tr>
           <tr>
               <td>
                   <span>category :</span>
               </td>
               <td>
                   <span><asp:Label runat="server" ID="Label1" Text='<%#Bind("cat_name") %>'></asp:Label></span>
               </td>
               <tr >
                   <td rowspan="0">
    <asp:ImageButton runat="server" ImageUrl="~/click-but6.gif" OnClick="ImageButton1_Click" ID="ImageButton1"/>
                   </td>
               </tr>
           </tr>
       </table>

         </ItemTemplate>
</asp:DataList>
    
</asp:Content>
