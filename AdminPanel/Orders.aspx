<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Orders.aspx.cs" Inherits="Orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content">
        <div id="Div2">

                    <h3>Pending Orders</h3>
                         <table>
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnDeleteCommand="DataList1_DeleteCommand">
                      
                        <HeaderTemplate>
                          <table>
                                <thead>
							<tr>
                            	<th>Customer</th>
                                <th>Item</th>
                                <th>Price</th>

                                <th>Delete</th>
                            </tr>
						</thead>
                         <%-- </table>--%>
                        </HeaderTemplate>
                        <ItemTemplate>
                         
						
						<tbody>
							<tr>
                                <asp:Label ID="id" runat="server" Visible="false" Text='<%#Bind("id") %>'></asp:Label>
                            	<td><a href="#"><asp:Label ID="Label1" runat="server" Text='<%#Bind("buyer") %>'></asp:Label></a></td>
                                <td><asp:Label ID="Label2" runat="server" Text='<%#Bind("pname") %>'></asp:Label></td>
                                <td><asp:Label ID="Label3" runat="server" Text='<%#Bind("price") %>'></asp:Label></td>
                           
                                <td><asp:LinkButton ID="Delete" runat="server" CommandName="Delete" Text="Delete"></asp:LinkButton></td>
                            </tr>
							
						</tbody>
				
                        </ItemTemplate>
                    </asp:DataList>          
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=MACBOOK82E1\SQLEXPRESS;Initial Catalog=photoart;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="select order_info.id,product.pname,buyer.NAME as buyer,product.price as price from order_info inner join product on order_info.p_id=product.pid inner join buyer on order_info.b_id=buyer.id"></asp:SqlDataSource>
              	</table>
                                 </div>
    </div>
</asp:Content>

