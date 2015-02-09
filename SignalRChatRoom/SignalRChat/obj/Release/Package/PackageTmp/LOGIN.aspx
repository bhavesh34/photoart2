<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LOGIN.aspx.cs" Inherits="SignalRChat.LOGIN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div >
       <link href="NewFolder1/css/bootstrap-social.css" rel="stylesheet" />
    <link href="NewFolder1/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="NewFolder1/css/bootstrap.min.css" rel="stylesheet" />
    <link href="NewFolder1/css/font-awesome.min.css" rel="stylesheet" />
    <link href="NewFolder1/css/templatemo_style.css" rel="stylesheet" />

            <div>
            <asp:Label runat="server" ID="Label1" Visible="false"></asp:Label>
        </div>
    <div class="container">
		<div class="col-md-12">
			<h1 class="margin-bottom-15">Photo Art User Login</h1>
			<form class="form-horizontal templatemo-container templatemo-login-form-1 margin-bottom-30" role="form" action="#" method="post">				
                <div class="form-group">
                    <div class="control-wrapper">
                        <table>
                            <tr>
                                <td>
                                   <span>Login As</span>
                                </td>
                                <td>
                                    <asp:DropDownList runat="server" ID="DropDownList1">
                            <asp:ListItem Value="2">Buyer</asp:ListItem>
                            <asp:ListItem Value="1">Seller</asp:ListItem>
                        </asp:DropDownList>                                
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
		        <div class="form-group">
		          <div class="col-xs-12">		            
		            <div class="control-wrapper">
		            	<label for="username" class="control-label fa-label"><i class="fa fa-user fa-medium"></i></label>
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Username" Width="300px"></asp:TextBox>
		            </div>		            	            
		          </div>              
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		          	<div class="control-wrapper">
		            	<label for="password" class="control-label fa-label"><i class="fa fa-lock fa-medium"></i></label>
                          <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" class="form-control" placeholder="Password" Width="300px"></asp:TextBox><br />
		            </div>
		          </div>
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
	             	
		          </div>
		        </div>
                <asp:ScriptManager ID="sc1" runat="server"></asp:ScriptManager>
                  <asp:UpdateProgress runat="server" ID="UpdateProgress" AssociatedUpdatePanelID="Update1">
                    <ProgressTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/31.gif" />
                    </ProgressTemplate>
                </asp:UpdateProgress>
                <asp:UpdatePanel runat="server" ID="Update1">               
                   <ContentTemplate>
                       		       <div class="form-group">
		          <div class="col-md-12">
		          	<div class="control-wrapper">
                          <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-info" OnClick="Button1_Click"  /><br />
		          		<a href="" class="text-right pull-right" style="padding-right:450px">Forgot password?</a>
		          	</div>
		          </div>
		        </div>
                       </ContentTemplate>

		        </asp:UpdatePanel>

		        <div class="form-group">
		        	<div class="col-md-12">
		        		<label>Login with: </label>
		        		<div class="inline-block">
		        			<a href="#"><i class="fa fa-facebook-square login-with"></i></a>
			        	    <a href="#"><i class="fa fa-google-plus-square login-with"></i></a>
			        	
			        	
		        		</div>		        		
		        	</div>
		        </div>
		      </form>
		      <div class="text-center">
		      	<a href="register.aspx" class="templatemo-create-new">Create new account <i class="fa fa-arrow-circle-o-right"></i></a>	
		      </div>
		</div>
	</div>
    
    </div>
    </form>
</body>
</html>
