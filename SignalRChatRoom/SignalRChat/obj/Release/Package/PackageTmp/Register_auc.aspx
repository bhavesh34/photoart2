<%@ Page Title="" Language="C#" MasterPageFile="~/PhotoArt.Master" AutoEventWireup="true" CodeBehind="Register_auc.aspx.cs" Inherits="SignalRChat.Register_auc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="color:red;font-size:xx-large;font-family:'Adobe Arabic';font-stretch:ultra-expanded;" align="center">
        Register Product For Auction  
    </h1>

    <br />
    <table> 
        <tr>
            <td><span style="color:RGB(155,25,0);font-size:large">Product name :</span> </td>
            <td>
                &nbsp;&nbsp;<asp:TextBox runat="server" ID="TextBox1" Height="25px" Width="225px" Font-Size="Large"></asp:TextBox><br />
            </td>
        </tr>
        <tr>
            
                 <td><span style="color:RGB(155,25,0);font-size:large">image</span> </td>
            <td>
                &nbsp;&nbsp;<asp:FileUpload runat="server" ID="file" ForeColor="Wheat" Width="225px" Height="30px" Font-Size="Large"/><br />
            </td>
        </tr>
        <tr>
             <td><span style="color:RGB(155,25,0);font-size:large">Give some description to your product :</span> </td>
            <td>
                &nbsp;&nbsp;<asp:TextBox runat="server" ID="TextBox2" TextMode="MultiLine" Rows="5" Columns="20" Height="45px" Width="325px" Font-Size="Large"></asp:TextBox><br />      
            </td>
        </tr>

        <tr>
             <td><span style="color:RGB(155,25,0);font-size:large">Starting Bid :</span> </td>
            <td>
                &nbsp;&nbsp;<asp:TextBox runat="server" ID="TextBox3" Height="45px" Width="325px" Font-Size="Large"></asp:TextBox><br />      
            </td>
        </tr>
       <tr>
            <td>
            &nbsp;&nbsp;<asp:Button ForeColor="Red" ID="Button"  runat="server" OnClick="Button_Click" Text="Submit" Height="50px" Width="105px"/><br />
        </td>
       </tr>
    </table>
</asp:Content>
