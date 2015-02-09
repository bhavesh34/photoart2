<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content">
        <div id="Div4">
                    <h3 style="text-align:center">Buyers</h3>
                         <table>
                    <asp:DataList runat="server" ID="DataList2" DataSourceID="SqlDataSource2" OnDeleteCommand="DataList2_DeleteCommand">
                        <HeaderTemplate>
                            <thead>
							<tr>
                            	<th>Name</th>
                                <th>Last name</th>
                                <th>email</th>
                                <th>password</th>
                                <th>Phone no</th>
                                <th>Address</th>
                                <th>Delete</th>
                            </tr>
						</thead>
                        </HeaderTemplate>
                        <ItemTemplate>
                         
						
						<tbody>
							<tr>
                                  <asp:Label ID="label132" runat="server" Text='<%#Bind("id") %>' Visible="false"></asp:Label>
                            	<td><a href="#"><asp:Label runat="server" ID="name1" Text='<%#Bind("NAME") %>'></asp:Label></a></td>
                                <td><asp:Label runat="server" ID="Last" Text='<%#Bind("last") %>'></asp:Label></td>
                                <td><asp:Label runat="server" ID="email" Text='<%#Bind("email") %>'></asp:Label></td>
                                <td><asp:Label runat="server" ID="password" Text='<%#Bind("password") %>'></asp:Label></td>
                                
                                <td><asp:Label runat="server" ID="Label4" Text='<%#Bind("phone_no") %>'></asp:Label></td>
                                
                                <td><asp:Label runat="server" ID="Label5" Text='<%#Bind("addrerss") %>'></asp:Label></td>
                                <td><asp:LinkButton runat="server" ID="Linkdelete" Text="Delete" CommandName="Delete"></asp:LinkButton></td>
                            </tr>
							
						</tbody>
					
                        </ItemTemplate>
                    </asp:DataList>                 
                      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=MACBOOK82E1\SQLEXPRESS;Initial Catalog=photoart;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="select * from buyer"></asp:SqlDataSource>
                             </table>
                  </div>
        <div id="Div3">
                     <h3 style="text-align:center">Sellers</h3>
                         <table>
                    <asp:DataList runat="server" ID="DataList1" DataSourceID="SqlDataSource1" OnDeleteCommand="DataList1_DeleteCommand">
                        <HeaderTemplate>
                            <thead>
							<tr>
                            	<th>Name</th>
                                <th>Last name</th>
                                <th>email</th>
                                <th>password</th>
                                <th>Phone no</th>
                                <th>Address</th>
                                <th>Image</th>
                                <th>Delete</th>
                            </tr>
						</thead>
                        </HeaderTemplate>
                        <ItemTemplate>
                         
						
						<tbody>
							<tr>
                                <asp:Label ID="label12" runat="server" Text='<%#Bind("id") %>' Visible="false"></asp:Label>
                            	<td><a href="#"><asp:Label runat="server" ID="seller_name" Text='<%#Bind("name") %>'></asp:Label></a></td>
                                <td><asp:Label runat="server" ID="seller_Last" Text='<%#Bind("last_name") %>'></asp:Label></td>
                                <td><asp:Label runat="server" ID="seller_email" Text='<%#Bind("email_id") %>'></asp:Label></td>
                                <td><asp:Label runat="server" ID="seller_password" Text='<%#Bind("password") %>'></asp:Label></td>
                                
                                <td><asp:Label runat="server" ID="Label6" Text='<%#Bind("phone_no") %>'></asp:Label></td>
                                
                                <td><asp:Label runat="server" ID="Label7" Text='<%#Bind("address") %>'></asp:Label></td>
                                <td><asp:Image ID="Seller_img" ImageUrl='<%#Bind("image_url") %>' runat="server" Height="25px" Width="30px" /></td>
                                <td><asp:LinkButton ID="LinkDelete2" runat="server" Text="Delete" CommandName="Delete"></asp:LinkButton></td>
                            </tr>
							
						</tbody>
					
                        </ItemTemplate>
                    </asp:DataList>                 
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=MACBOOK82E1\SQLEXPRESS;Initial Catalog=photoart;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="select * from seller"></asp:SqlDataSource>
                             </table>   
        </div>
            </div>
</asp:Content>

