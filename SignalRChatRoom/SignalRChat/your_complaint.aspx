<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="your_complaint.aspx.cs" Inherits="SignalRChat.your_complaint" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

    <style type="text/css">
        .left {
            padding-right:600px;
        }
    </style>
    <link href="NewFolder1/css/bootstrap-social.css" rel="stylesheet" />
    <link href="NewFolder1/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="NewFolder1/css/bootstrap.min.css" rel="stylesheet" />
    <link href="NewFolder1/css/font-awesome.min.css" rel="stylesheet" />
    <link href="NewFolder1/css/templatemo_style.css" rel="stylesheet" />
    <title>complaint</title>
</head>
<body class="templatemo-bg-image-2">
    <form id="form1" runat="server" class="form-horizontal templatemo-contact-form-1">
    <div class="">
    <div class="container">
		<div class="col-md-12">			
		
				<div class="form-group">
					<div class="col-md-12">
						<h1 style="padding-right:400px">Complaint us</h1>
						<h3><p>we are sorry to hear about</p></h3>
					</div>
				</div>				
		        <div class="form-group">
		          <div class="col-md-12">		          	
		            <label for="name" class="control-label">Name *</label>
		            <div class="templatemo-input-icon-container">
		            	<i class="fa fa-user"></i>
                        <asp:TextBox ID="TextBox1" runat="server" Height="45px"  Width="256px" ForeColor="Black" Font-Bold="true"></asp:TextBox>  	
		            </div>		            		            		            
		          </div>              
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		            <label for="email" class="control-label">Email *</label>
		            <div class="templatemo-input-icon-container">
		            	<i class="fa fa-envelope-o"></i>
		            	<asp:TextBox ID="TextBox2" runat="server" Height="45px"  Width="256px" ForeColor="Black" Font-Bold="true"></asp:TextBox>
		            </div>
		          </div>
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		            <label for="website" class="control-label">Website (optional)</label>
		            <div class="templatemo-input-icon-container">
		            	<i class="fa fa-globe"></i>
		            <asp:TextBox ID="TextBox3" runat="server" Height="45px"  Width="256px" ForeColor="Black" Font-Bold="true"></asp:TextBox>
		            </div>
		          </div>
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		            <label for="subject" class="control-label">Subject *</label>
		            <div class="templatemo-input-icon-container">
		            	<i class="fa fa-info-circle"></i>
		            	<asp:TextBox ID="TextBox4" runat="server" Height="45px"  Width="256px" ForeColor="Black" Font-Bold="true"></asp:TextBox>
		            </div>
		          </div>
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		            <label for="message" class="control-label">Message *</label>
		            <div class="templatemo-input-icon-container">
		            	<i class="fa fa-pencil-square-o"></i>
		            	<asp:TextBox ID="TextBox5" runat="server" Height="122px"  Width="350px" TextMode="MultiLine" Rows="8" Columns="50" ForeColor="Black" Font-Bold="true"></asp:TextBox>
		            </div>
		          </div>
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		            		            
		          </div>
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
                      <asp:Button ID="Button1" runat="server" Text="Submit complaint" OnClick="Button1_Click" class="btn btn-success pull-left" Visible="true" />
                      &nbsp;  &nbsp;  &nbsp;
                      <asp:LinkButton ID="LinkButton1" runat="server"  ForeColor="White" Text="<back to home page"></asp:LinkButton>
		          </div>
		        </div>		    	
		
		</div>
	</div>
    </div>
    </form>
</body>
</html>
