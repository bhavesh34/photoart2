<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SetTimeForAuction.aspx.cs" Inherits="SetTimeForAuction" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
       <div id="content">
           <h1 style="color:red;font-size:xx-large;font-family:'Adobe Fan Heiti Std'">Set Auction</h1>
           <table style="margin-left:100px;margin-top:100px">
               <tr>
                   <td>
                    <h2 style="color:blue;font-size:x-large">Start Time :</h2>
                   </td>
                   <td>
                       <asp:TextBox runat="server" ID="TextBox1" Height="50px" Width="274px"></asp:TextBox>
                     
                  
                       <asp:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox1">
                       </asp:CalendarExtender>
                     
                  
                   </td>
               </tr>
               <tr>
                   <td>
                    <h2 style="color:blue;font-size:x-large">End Time :</h2>
                   </td>
                   <td>
                       <asp:TextBox runat="server" ID="TextBox2" Height="50px" Width="274px"></asp:TextBox>
                      
                
                       <asp:CalendarExtender ID="TextBox2_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox2">
                       </asp:CalendarExtender>
                      
                
                   </td>
               </tr>
               <tr>
                   <td>
                       <asp:Button runat="server" OnClick="Unnamed_Click" ForeColor="Red" Text="Set" Height="47px" Width="156px" />
                   </td>
               </tr>
           </table>
       </div>
  
</asp:Content>


