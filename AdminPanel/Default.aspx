<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<link href="css/bootstrap-social.css" rel="stylesheet" />
<link href="css/bootstrap-theme.min.css" rel="stylesheet" />
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/font-awesome.min.css" rel="stylesheet" />
<link href="css/templatemo_style.css" rel="stylesheet" />

    <style type="text/css">
        .Label1 {
            padding-top:300px;
            margin-right:100px;
        }
    </style>
     <div>
            
        </div>
    <div class="container">
		<div class="col-md-12">
            <br /><br /><br />
            <asp:Label runat="server" ID="Label1" Visible="true" Text="" CssClass="Label1" Font-Size="Large" ForeColor="Red" Font-Bold="true"></asp:Label>
			<h1 class="margin-bottom-15">Please Enter Your Cerdentials to continue</h1>
			<form class="form-horizontal templatemo-container templatemo-login-form-1 margin-bottom-30" role="form" action="#" method="post">				
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
		        <div class="form-group">
		          <div class="col-md-12">
		          	<div class="control-wrapper">
                          <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-info" OnClick="Button1_Click"  /><br />
		          		<a href="" class="text-right pull-right" style="padding-right:450px">Forgot password?</a>
		          	</div>
		          </div>
		        </div>
		        <hr>
		        <div class="form-group">
		        	<div class="col-md-12">
		        		<label>Login with: </label>
		        		<div class="inline-block">
		        			<a href="#"><i class="fa fa-facebook-square login-with"></i></a>
			        		<a href="#"><i class="fa fa-twitter-square login-with"></i></a>
			        		<a href="#"><i class="fa fa-google-plus-square login-with"></i></a>
			        		<a href="#"><i class="fa fa-tumblr-square login-with"></i></a>
			        		<a href="#"><i class="fa fa-github-square login-with"></i></a>
		        		</div>		        		
		        	</div>
		        </div>
		      </form>
		      <div class="text-center">
		      	<a href="register.aspx" class="templatemo-create-new">Create new account <i class="fa fa-arrow-circle-o-right"></i></a>	
		      </div>
		</div>
	</div>


</asp:Content>

