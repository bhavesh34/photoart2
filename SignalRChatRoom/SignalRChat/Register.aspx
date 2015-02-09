<%@ Page Title="" Language="C#" MasterPageFile="~/PhotoArt.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SignalRChat.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
        span.abc {
            color:RGB(155,25,0)
        }
    </style>
     <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.1.1.min.js"></script>
    <script type="text/javascript">

        function calllink1() {
            
           
            $("#Buyer").show(1000);
            $("#Seller").hide(1000);
            return false;
        }


        $(document).ready(function() {
            $("#Seller").hide();
            $("#Buyer").hide();
            $("#LinkButton2").click(function () {
                $("#Seller").show(1000, function () {
                    $("#Buyer").hide(1000);
                });
                
                return false;
            });
                     
       
        });

        function calllink2() {


            $("#Seller").show(1000);
            $("#Buyer").hide(1000);
            return false;
        }
</script>

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    
    <br /><br /><br /><br />
    <div>
        <link href="file.css" rel="stylesheet" />
        <b><span style="font-family:'Freestyle Script';font-size:xx-large;color:firebrick">Regestration</span></b>
        <br />
        <table>
            <tr>
                <td>
                    <a href="" id="LinkButton1" onclick="return calllink1();" style="font-family:'Freestyle Script';color:rgb(0, 148, 255);font-size:xx-large;">Register as Buyer</a> &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <!--<asp:LinkButton ID="LinkButton2" runat="server" Text="Register as Seller" Font-Bold="true" ForeColor="WhiteSmoke" Font-Italic="true"></asp:LinkButton> -->
                    <a href="#" id="LinkButton2" style="font-family:'Freestyle Script';color:rgb(0, 148, 255);font-size:xx-large;" onclick="return calllink2();">Register as Seller</a>
                </td>
            </tr>
        </table>
        
        <br />
       
       
          <table id="Seller">
                    <caption>
                        <h1 align="center">Seller regestration</h1>
                        <tr>
                            <td><span style="color:RGB(155,25,0)">Name</span> </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td><span style="color:RGB(155,25,0)">Last Name</span> </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td><span style="color:RGB(155,25,0)">Country</span> </td>

                            <td>

                                  <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>   
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" DataSourceID="Country" DataTextField="cname" DataValueField="cid" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem>Select Country</asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Country" runat="server" ConnectionString="<%$ ConnectionStrings:photoartConnectionString %>" SelectCommand="SELECT * FROM [country]"></asp:SqlDataSource>
                </ContentTemplate>
                                      </asp:UpdatePanel>
                            </td>
                        </tr>
                        <tr id="statetr">
                            <td><span style="color:RGB(155,25,0)">State</span> </td>
                            <td>

                             
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>   
              <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="sname" DataValueField="sid">
                                    <asp:ListItem>Select state</asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:photoartConnectionString %>" SelectCommand="SELECT * FROM [state] WHERE ([cid] = @cid)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" Name="cid" PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                </asp:SqlDataSource>
            </ContentTemplate >
        </asp:UpdatePanel >
                                
                                <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:photoartConnectionString2 %>" SelectCommand="SELECT DISTINCT [cid], [cname] FROM [country]"></asp:SqlDataSource>--%></td>
                        </tr>
                         <tr>
                            <td><span style="color:RGB(155,25,0)">Email Address</span> </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td><span style="color:RGB(155,25,0)">Address</span> </td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Height="56px" Width="256px"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td><span style="color:RGB(155,25,0)">We would like to have your picture or logo</span> </td>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="upload" />    
                            </td>
                        </tr>
                         <tr>
                            <td><span style="color:RGB(155,25,0)">Phone NO</span> </td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td><span style="color:RGB(155,25,0)">Password</span> </td>
                            <td>
                                <asp:TextBox ID="TextBox12" runat="server" TextMode="Password"></asp:TextBox>
                                
                            </td>
                        </tr>
                        <tr>
                            <td><span style="color:RGB(155,25,0)">Confirm Password</span> </td>
                            <td>
                                <asp:TextBox ID="TextBox13" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                       
                         <tr>
                             <td>
                                 <asp:Button ID="Button1" runat="server" Text="Register" BackColor="LightGoldenrodYellow" OnClick="Button1_Click" />
                             </td>
                         </tr>
                        

                                            </caption>
        </table>
                <table id="Buyer">
                    <tr>
                        <td>
                            <span style="color:RGB(155,25,0)">Name</span>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span style="color:RGB(155,25,0)">Last Name</span>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <span style="color:RGB(155,25,0)">email</span>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span style="color:RGB(155,25,0)">Phone no</span>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span style="color:RGB(155,25,0)">area code</span>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <span style="color:RGB(155,25,0)">select Country</span>
                        </td>
                        <td>
                            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
            <ContentTemplate>  
                            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="Country" DataTextField="cname" DataValueField="cid" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="True" ></asp:DropDownList>
                </ContentTemplate>
                                </asp:UpdatePanel>
                        </td>
                    </tr>
                    <tr>
                        <td>
                           
                            <span style="color:RGB(155,25,0)">select State</span>
               
                        </td>
                        <td>
                           <asp:UpdatePanel ID="UpdatePanel4" runat="server">
            <ContentTemplate>  
                            <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource2" DataTextField="sname" DataValueField="sid">
                               
                            </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
                  </ContentTemplate>
                                </asp:UpdatePanel>
                        </td>
                    </tr>
                     <tr>
                            <td><span style="color:RGB(155,25,0)">Address</span> </td>
                            <td>
                                <asp:TextBox ID="TextBox11" runat="server" TextMode="MultiLine" Height="56px" Width="256px"></asp:TextBox>
                            </td>
                        </tr>
                     <tr>
                            <td><span style="color:RGB(155,25,0)">Password</span> </td>
                            <td>
                                <asp:TextBox ID="TextBox14" runat="server" TextMode="Password"></asp:TextBox>
                              <%--  <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password does not match " Font-Bold="True" Font-Italic="True" ForeColor="Red" ControlToValidate="TextBox14"></asp:CompareValidator>--%>
                            </td>
                        </tr>
                        <tr>
                            <td><span style="color:RGB(155,25,0)">Confirm Password</span> </td>
                            <td>
                                <asp:TextBox ID="TextBox15" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                             <td>
                                 <asp:Button ID="Button2" runat="server" Text="Register" BackColor="LightGoldenrodYellow" OnClick="Button2_Click" />
                             </td>
                         </tr>
                       
                </table>
        
    </div>

</asp:Content>
