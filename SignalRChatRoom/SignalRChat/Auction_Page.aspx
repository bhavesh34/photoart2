<%@ Page Title="" Language="C#" MasterPageFile="~/PhotoArt.Master" AutoEventWireup="true" CodeBehind="Auction_Page.aspx.cs" Inherits="SignalRChat.Auction_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <script type="text/javascript">
        var popUpObj; //Declare a global variable
        function popUp(url) {
            popUpObj = window.open(url, "Popup", "toolbar=no,scrollbars=no,location=no" +
            ",statusbar=no,menubar=no,resizable=0,width=600," +
            "height=600,left = 340,top = 100");
            popUpObj.focus();
        }
        function callChildFunc() {
            if (popUpObj != null && !popUpObj.closed) {
                var val = popUpObj.childFunc();
                alert(val);
            }
        }
        function parentFunc() {
            return document.getElementById("txtParent").value;
        }
        function getChildControl() {
            if (popUpObj != null && !popUpObj.closed) {
                var form1 = popUpObj.document.getElementsByTagName("form")[0];
                alert(form1.txtChild.value);
            }
        }
        function refreshChild() {
            if (popUpObj != null && !popUpObj.closed) {
                popUpObj.location.reload();
            }
        }
    </script>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:DataList runat="server" ID="DataList1" OnEditCommand="DataList1_EditCommand" OnCancelCommand="DataList1_CancelCommand" OnUpdateCommand="DataList1_UpdateCommand">
    <ItemTemplate>
        <asp:Label runat="server" ID="hp1" Text='<%#Bind("id") %>' Visible="false"></asp:Label>
        <ul>
    <li>
<a href="#">
     <asp:Image runat="server" ID="Image2" ImageUrl='<%#Eval("pimage") %>' Width="250px" Height="225px" />
<%-- image of product for auction --%>   
</a>
        <div class="product-info">
            <h3>
               <asp:Label runat="server" ID="Label3" Text='<%#Bind("pname") %>' Font-Bold="true"></asp:Label>
            </h3>
        </div>
        <div class="product-desc">
      <span style="font-size:medium">Description : </span> <p> &nbsp;&nbsp;<asp:Label runat="server" ID="Label9" Text='<%#Bind("descrption") %>' Font-Size="Large"></asp:Label></p><br />
           <asp:Timer runat="server" ID="Timer1" Interval="1000" Enabled="true" OnTick="Timer1_Tick"></asp:Timer>
      <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
          <Triggers>
              <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick"/>
              <asp:AsyncPostBackTrigger ControlID="Update1" EventName="Command" />
                </Triggers>
          <ContentTemplate>
               
             
               <span style="font-size:medium">Current Bid : </span> <p> &nbsp;&nbsp;<asp:Label runat="server" ID="Label1" Text='<%#Bind("final_bid") %>' Font-Size="Large"></asp:Label></p><br />
             
       <%--<span style="font-size:medium">By Buyer : </span> <p> &nbsp;&nbsp;<asp:Label runat="server" ID="Label2" Text='<%#Bind("buyer_name") %>' Font-Size="Large"></asp:Label></p><br />--%>
               </strong>
           <a onclick="popUp('PopUp.aspx')"><asp:LinkButton runat="server" Text="Bid Now" OnClick="Unnamed_Click"  OnClientClick="popUp('PopUp.aspx')" CommandName="Update" ID="Update1"></asp:LinkButton> </a>
           
                   </ContentTemplate>
      </asp:UpdatePanel>
             <%-- <span style="font-size:medium">Your Bid : </span> <p> &nbsp;&nbsp;<asp:TextBox ID="TextBox5" runat="server" Text='<%#Bind("last_bidvalue") %>' ></asp:TextBox></p>
                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Update" CommandArgument="Update" OnClick="Update_Click" Font-Size="Larger" F--%><%--oreColor="DarkBlue" Text="Bid Now"></asp:LinkButton>--%>
             
                                                       <br /><br />
           
        </div>
    </li> 
</ul>


    </ItemTemplate>

</asp:DataList>
   
</asp:Content>
