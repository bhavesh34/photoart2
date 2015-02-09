<%@ Page Title="" Language="C#" MasterPageFile="~/PhotoArt.Master" AutoEventWireup="true" CodeBehind="Add_product.aspx.cs" Inherits="SignalRChat.Add_product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="font-family:'Adobe Hebrew';font-size:xx-large;color:orangered" align="center">Add your Art</h1>
    <br /><br /><br /><br />
    <table>
        <tr>
            <td>
                <span style="font-family:'Adobe Kaiti Std';font-size:large;color:darkgoldenrod">Product name :</span>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="189px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <span style="font-family:'Adobe Kaiti Std';font-size:large;color:darkgoldenrod">Product Description :</span>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="126px" Width="189px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <span style="font-family:'Adobe Kaiti Std';font-size:large;color:darkgoldenrod">Price :</span>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="189px"></asp:TextBox>
               <asp:RegularExpressionValidator runat="server" ID="RegValid" ValidationExpression="^\d+(\.\d\d)?$" ControlToValidate="TextBox3" ErrorMessage="Enter only currency"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <span style="font-family:'Adobe Kaiti Std';font-size:large;color:darkgoldenrod">Product name :</span>
            </td>
            <td>
               <asp:FileUpload runat="server" ID="FileUpload1" Height="26px" Width="189px" />
            </td>
        </tr>
        <tr>
            <td>
                <span style="font-family:'Adobe Kaiti Std';font-size:large;color:darkgoldenrod">Product name :</span>
            </td>
            <td>
        <asp:DropDownList ID="DropDownList1" runat="server" Width="189px" Height="26px" DataSourceID="SqlDataSource1" DataTextField="cat_name" DataValueField="id"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:photoartConnectionString %>" SelectCommand="SELECT * FROM [catagory]"></asp:SqlDataSource>
            </td>
        </tr>
       <tr>
           <td rowspan="2">
               <asp:Button runat="server" ID="Button1" OnClick="Button1_Click" Width="100px" Height="30px" ForeColor="DarkCyan"  Text="Add" />
           </td>
       </tr> 
       </table>
</asp:Content>
