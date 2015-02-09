<%@ Page Title="" Language="C#" MasterPageFile="~/PhotoArt.Master" AutoEventWireup="true" CodeBehind="ProductsPage.aspx.cs" Inherits="SignalRChat.ProductsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .table {
            border-width:thin;
            border-style:solid;
            border-color:white;
            

        }

        #tr:hover {
            border-color:green
        }

        .image {
            margin:10px;
   
}

        

        #Image1:hover {
	transform:scale(2,2);
	transform-origin:0 0;
    cursor:pointer;
}
    </style>
    <script type="text/javascript">
        $(function () {
          //  alert("ssfe");
            $("#DataList1").closest("a").attr("class", "active");
        });
    </script>
  
  
    <div>
        <asp:DataList ID="DataList1" runat="server"  OnItemCommand="DataList1_ItemCommand" DataKeyField="pid" DataSourceID="SqlDataSource1" BorderColor="White" RepeatColumns="3" RepeatDirection="Horizontal" CellSpacing="15" OnSelectedIndexChanged="DataList1_SelectedIndexChanged1" SelectedIndex="0">
            
            <ItemTemplate>
<ul>
    <li>
<a href="ProductDetails.aspx">
      <asp:ImageButton CommandName="select"  runat="server" ID="Image2" ImageUrl='<%#Eval("image") %>' Width="250px" Height="225px"/>
     <asp:HiddenField ID="HiddenField1" Value='<%#Bind("pid") %>' runat="server" />
</a>
        <div class="product-info">
            <h3>
               <asp:Label runat="server" ID="Label3" Text='<%#Bind("pname") %>' Font-Bold="true"></asp:Label>
            </h3>
        </div>
        <div class="product-desc">
      <span style="font-size:medium">Description : </span> <p> &nbsp;&nbsp;<asp:Label runat="server" ID="Label9" Text='<%#Bind("product_descp") %>' Font-Size="Large"></asp:Label></p><br />
        <span style="font-size:large">Price :</span>    <strong class="price"> <asp:Label runat="server" ID="Label4" Text='<%#Bind("price")%>' Font-Bold="true" Font-Size="XX-Large"/>
             
                                                        </strong><br /><br />
           <%--<span><asp:LinkButton ID="LinkButton1" runat="server" Text="asd"></asp:LinkButton></span>--%>
        </div>
    </li>
</ul>

            </ItemTemplate>
            
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:photoartConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
    </div>
 </asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>--%>




        
         
