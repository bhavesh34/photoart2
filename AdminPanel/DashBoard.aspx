<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DashBoard.aspx.cs" Inherits="DashBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content">
       			<div id="rightnow">
                    <h3 class="reallynow">
                        <span>Right Now</span>
                        <a href="#" class="add">Add New Product</a>
                        <a href="#" class="app_add">Some Action</a>
                        <br />
                    </h3>
				    <p class="youhave">You have <asp:LinkButton ID="lbn1" runat="server" Text=""></asp:LinkButton>, <a href="#"><asp:LinkButton runat="server" ID="Lbl2"></asp:LinkButton></a>, <a href="#"><asp:LinkButton runat="server" ID="LinkButton1"></asp:LinkButton></a> and <a href="#"><asp:LinkButton runat="server" ID="Link2"></asp:LinkButton></a> 

				    </p>
			  </div>
              <div id="infowrap">
              <div id="infobox">
                    <h3>Sales for December</h3>
                    <p><img src="img/graph.jpg" width="360" height="266" /></p>            
                  </div>
                  <div id="Div1" class="margin-left">
                    <h3>Traffic for December</h3> 
                    <p><img src="img/graph2.jpg" alt="a" width="359" height="266" /></p>
                  </div>
                  <div id="Div2">

                    <h3>Last 5 Orders</h3>
                         <table>
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                      
                        <HeaderTemplate>
                          <table>
                                <thead>
							<tr>
                            	<th>Customer</th>
                                <th>Item</th>
                                <th>Price</th>
                            </tr>
						</thead>
                         <%-- </table>--%>
                        </HeaderTemplate>
                        <ItemTemplate>
                         
						
						<tbody>
							<tr>
                            	<td><a href="#"><asp:Label ID="Label1" runat="server" Text='<%#Bind("buyer") %>'></asp:Label></a></td>
                                <td><asp:Label ID="Label2" runat="server" Text='<%#Bind("pname") %>'></asp:Label></td>
                                <td><asp:Label ID="Label3" runat="server" Text='<%#Bind("price") %>'></asp:Label></td>
                            </tr>
							
						</tbody>
				
                        </ItemTemplate>
                    </asp:DataList>          
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=MACBOOK82E1\SQLEXPRESS;Initial Catalog=photoart;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="select product.pname,buyer.NAME as buyer,product.price as price from order_info inner join product on order_info.p_id=product.pid inner join buyer on order_info.b_id=buyer.id where order_info.id > ( (select COUNT(*) from order_info) - 5)"></asp:SqlDataSource>
              	</table>
                                 </div>
                  
                  <div id="Div4">
                    <h3 style="text-align:center">New Customers</h3>
                         <table>
                    <asp:DataList runat="server" ID="DataList2" DataSourceID="SqlDataSource2">
                        <HeaderTemplate>
                            <thead>
							<tr>
                            	<th>Name</th>
                                <th>Last name</th>
                                <th>email</th>
                                <th>password</th>
                                <th>Phone no</th>
                                <th>Address</th>
                            </tr>
						</thead>
                        </HeaderTemplate>
                        <ItemTemplate>
                         
						
						<tbody>
							<tr>
                            	<td><a href="#"><asp:Label runat="server" ID="name1" Text='<%#Bind("NAME") %>'></asp:Label></a></td>
                                <td><asp:Label runat="server" ID="Last" Text='<%#Bind("last") %>'></asp:Label></td>
                                <td><asp:Label runat="server" ID="email" Text='<%#Bind("email") %>'></asp:Label></td>
                                <td><asp:Label runat="server" ID="password" Text='<%#Bind("password") %>'></asp:Label></td>
                                
                                <td><asp:Label runat="server" ID="Label4" Text='<%#Bind("phone_no") %>'></asp:Label></td>
                                
                                <td><asp:Label runat="server" ID="Label5" Text='<%#Bind("addrerss") %>'></asp:Label></td>
                            </tr>
							
						</tbody>
					
                        </ItemTemplate>
                    </asp:DataList>                 
                      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=MACBOOK82E1\SQLEXPRESS;Initial Catalog=photoart;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="select * from buyer where id &gt; 
( (select COUNT(*) from buyer) - 5)"></asp:SqlDataSource>
                             </table>
                  </div>
                  
              </div>
            </div>
</asp:Content>

<%--  --%>