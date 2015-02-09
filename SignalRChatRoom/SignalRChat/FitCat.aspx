<%@ Page Title="" Language="C#" MasterPageFile="~/PhotoArt.Master" AutoEventWireup="true" CodeBehind="FitCat.aspx.cs" Inherits="SignalRChat.FitCat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:DataList ID="DataList1" runat="server" BorderColor="White" RepeatColumns="5" RepeatDirection="Horizontal" CellSpacing="15">
            
            <ItemTemplate>
<ul>
    <li>
<a href="ProductDetails.aspx">
      <asp:ImageButton runat="server" ID="Image2" ImageUrl='<%#Eval("image") %>' Width="250px" Height="225px" OnClick="Image2_Click"/>
</a>
        <div class="product-info">
            <h3>
               <asp:Label runat="server" ID="Label3" Text='<%#Bind("pname") %>' Font-Bold="true"></asp:Label>
            </h3>
        </div>
        <div class="product-desc">
      <span style="font-size:medium">Description : </span> <p> &nbsp;&nbsp;<asp:Label runat="server" ID="Label9" Text='<%#Bind("product_descp") %>' Font-Size="Large"></asp:Label></p><br />
        <span style="font-size:large">Price :</span>    <strong class="price"> <asp:Label runat="server" ID="Label4" Text='<%#Bind("price")%>' Font-Bold="true" Font-Size="XX-Large"/>
             <asp:LinkButton ID="WD1" runat="server" OnClick="WD1_Click" Font-Size="Larger" ForeColor="DarkBlue"></asp:LinkButton>
                                                        </strong><br /><br />
           
        </div>
    </li>
</ul>

            </ItemTemplate>
            
        </asp:DataList>
       
    </div>
</asp:Content>
