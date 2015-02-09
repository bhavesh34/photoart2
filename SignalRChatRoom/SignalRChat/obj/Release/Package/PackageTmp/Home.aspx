<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SignalRChat.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   <meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<script src="Update/js/jquery-1.7.1.min.js"></script>
    <script src="Update/js/jquery.poptrox-0.1.js"></script>
    <script src="Update/js/jquery.slidertron-0.3.js"></script>
		<link href="http://fonts.googleapis.com/css?family=Coda+Caption" rel="stylesheet" type="text/css" />
		<link href="http://fonts.googleapis.com/css?family=Philosopher" rel="stylesheet" type="text/css" />
    <script src="fINAL/js/jquery-1.4.1.min.js"></script>
    <script src="fINAL/js/jquery-func.js"></script>
    <script src="fINAL/js/jquery.jcarousel.pack.js"></script>
    <link href="fINAL/css/ie6.css" rel="stylesheet" />
    <link href="fINAL/css/style.css" rel="stylesheet" />
<style type="text/css">
 #LinkButton1:hover 
{ font:10px; color:white;  }  
</style>    

     <script type="text/javascript">
         //$(document).ready(function () {
         //    //            //            $("#TextBox1").mouseenter(function () { $(this).css("background-color", "yellow"); });
         //    //            $("#Button3").hide()
         //    //            $("#table1").click(function () { $("#table1").hide(1000); $("#Button3").show(); });
         //    //            $("#Button3").click(function () { $("#table1").show(1000); return false; });
         //    //        
         //    $("#tbl").hide();
         //    $("#LinkButton1").click(function () {

         //        $("#tbl").show(1000);
         //        return false;
         //    });
         //});
         </script>
    <style>
        .stylink {
            color:white;
        }
        </style>
    <title>Photo Art the Galaxy of paintings</title>
</head>
    <body>
    <form id="form1" runat="server">
<div class="shell">
  <!-- Header -->
  <div id="header">
    <h1 id="logo"><a href="#">shoparound</a></h1>
    <!-- Cart -->
    <!-- End Cart -->
    <!-- Navigation -->
    <div id="navigation">
      <ul>
        <li class="active"><a href="#" class="active" >Home</a></li>
        <li><a href="your_complaint.aspx">Complaint</a></li>
        <li><a href="LOGIN.aspx">Login</a></li>
        <li><a href="ProductsPage.aspx">The Store</a></li>
        <li><a href="#">Contact</a></li>
          <li><a href="Register.aspx">Register</a></li>
          <li><asp:LinkButton runat="server" ID="LinkButton4" Text="Auction" PostBackUrl="~/Auction_Page.aspx"></asp:LinkButton></li>
      
      </ul>
    </div>
    <!-- End Navigation -->
  </div>
  <!-- End Header -->
  <!-- Main -->
  <div id="main">
    <div class="cl">&nbsp;</div>
    <!-- Content -->
    <div id="content">
      <!-- Content Slider -->
      <div id="slider" class="box">
        <div id="slider-holder">
          <ul>
            <li><a href="#"><img src="paint/pic1.jpg" alt="" /></a></li>
            <li><a href="#"><img src="paint/pic2.jpg"" alt="" /></a></li>
            <li><a href="#"><img src="paint/pic3.jpg"" alt="" /></a></li>
            <li><a href="#"><img src="paint/pic4.jpg"" alt="" /></a></li>
          </ul>
        </div>
        <div id="slider-nav"> <a href="#" class="active">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> </div>
      </div>
      <!-- End Content Slider -->
      <!-- Products -->
      <div class="products">
        <div class="cl">&nbsp;</div>
        <ul>
          <li> <a href="#"><img src="PAINTINGS/images.jpg" alt="" style="height: 179px; width: 219px" /></a>
            <div class="product-info">
              <h3>Flower</h3>
              <div class="product-desc">
                <h4>The Power</h4>
                <p>The Power of Nature<br />
                  Precious Beauty</p>
                <strong class="price">1000.00</strong> </div>
            </div>
          </li>
          <li> <a href="#"><img src="PAINTINGS/images1.jpg" alt="" /></a>
            <div class="product-info">
              <h3>River</h3>
              <div class="product-desc">
                <h4>WOMEN</h4>
                <p>At the River of Village<br />
                  The art which describes the enormus happiness in village</p>
                <strong class="price">5899</strong> </div>
            </div>
          </li>
          <li class="last"> <a href="#"><img src="PAINTINGS/images3.jpg" alt="" /></a>
            <div class="product-info">
              <h3>HOly</h3>
              <div class="product-desc">
                <h4>ART</h4>
                <p>The painting of pain<br />
                  </p>
                <strong class="price">6899</strong> </div>
            </div>
          </li>
        </ul>
        <div class="cl">&nbsp;</div>
      </div>
      <!-- End Products -->
    </div>
    <!-- End Content -->
    <!-- Sidebar -->
    <div id="sidebar">
      <!-- Search -->
      <div class="box search">
        <h2>Search by <span></span></h2>
        <form action="#" method="post" style="height: 215px">
            <label>Keyword</label>
              <asp:TextBox ID="TextBox1" runat="server" CssClass="field"></asp:TextBox>
            <label>Category</label>
              <asp:DropDownList CssClass="field" ID="DropDownList3" runat="server"></asp:DropDownList>
            <div class="inline-field">
              <label>Price</label>
                <asp:DropDownList CssClass="field small-field" ID="DropDownList1" runat="server">
               <asp:ListItem Text="500" Value="500"></asp:ListItem> 
                     <asp:ListItem Text="1000" Value="1000"></asp:ListItem>   
                    <asp:ListItem Value="1500" Text="1500"></asp:ListItem>
                    <asp:ListItem Text="1000" Value="1000"></asp:ListItem>   
                     <asp:ListItem Text="2500" Value="2500"></asp:ListItem> 
                    <asp:ListItem Text="3000" Value="3000"></asp:ListItem>   
                    <asp:ListItem Text="3500" Value="3500"></asp:ListItem> 
                    <asp:ListItem Text="4500" Value="4500"></asp:ListItem>
                    <asp:ListItem Text="5000" Value="5000"></asp:ListItem>   
                    <asp:ListItem Text="5500" Value="5500"></asp:ListItem>
                    <asp:ListItem Text="6000" Value="6000"></asp:ListItem>             
                </asp:DropDownList>
              <label>to:</label>
              <asp:DropDownList CssClass="field small-field" ID="DropDownList2" runat="server">
                 <asp:ListItem Text="1500" Value="1500"></asp:ListItem>
                  <asp:ListItem Text="2500" Value="2500"></asp:ListItem>
                  <asp:ListItem Text="3500" Value="3500"></asp:ListItem> 
                  <asp:ListItem Text="4500" Value="4500"></asp:ListItem>
                  <asp:ListItem Text="5500" Value="5500"></asp:ListItem>
                  <asp:ListItem Text="6500" Value="6500"></asp:ListItem>                 
              </asp:DropDownList>
            </div>
              <asp:Button ID="Button1"  OnClick="Button1_Click" runat="server" CssClass="search-submit" Text="Button" />
            </form>
      </div>
      <!-- End Search -->
      <!-- Categories -->
      <div class="box categories">
        <h2>Categories <span></span></h2>
        <div class="box-content">
          <ul>
            <li><a href="#">Vintage</a></li>
            <li><a href="#">Bright colors</a></li>
            <li><a href="#">Dark colors</a></li>
            <li><a href="#">New art</a></li>
            <li><a href="#">Nature</a></li>
            <li><a href="#">Flowers</a></li>
            <li><a href="#">Humoures</a></li>
            <li><a href="#">Rare out of Rare</a></li>
            <li><a href="#">Unsold paintings of famous artists</a></li>
            <li><a href="#">Message Art</a></li>
            <li><a href="#">Pop art</a></li>
            <li><a href="#">Funa</a></li>
            <li class="last"><a href="#">Duplicates</a></li>
          </ul>
        </div>
      </div>
      <!-- End Categories -->
    </div>
    <!-- End Sidebar -->
    <div class="cl">&nbsp;</div>
  </div>
  <!-- End Main -->
  <!-- Side Full -->
  <div class="side-full">
    <!-- More Products -->
    <div class="more-products">
      <div class="more-products-holder">
        <ul>
          <li><a href="#"><img src="paint/small4.jpg" alt="" /></a></li>
          <li><a href="#"><img src="paint/small5.jpg" alt="" /></a></li>
          <li><a href="#"><img src="paint/small3.jpg" alt="" /></a></li>
          <li><a href="#"><img src="paint/small6.jpg" alt="" /></a></li>
          <li><a href="#"><img src="paint/small7.jpg" alt="" /></a></li>
          <li><a href="#"><img src="paint/small8.jpg" alt="" /></a></li>
          <li><a href="#"><img src="paint/small9.jpg" alt="" /></a></li>
          <li><a href="#"><img src="paint/small10.jpg" alt="" /></a></li>
          <li><a href="#"><img src="paint/small11.jpg" alt="" /></a></li>
          <li><a href="#"><img src="paint/small12.jpg" alt="" /></a></li>
          <li><a href="#"><img src="paint/small4.jpg" alt="" /></a></li>
          <li><a href="#"><img src="paint/small5.jpg" alt="" /></a></li>
          <%--<li><a href="#"><img src="css/images/small6.jpg" alt="" /></a></li>--%>
          <%--<li><a href="#"><img src="css/images/small7.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small1.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small2.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small3.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small4.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small5.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/small6.jpg" alt="" /></a></li>
          <li class="last"><a href="#"><img src="css/images/small7.jpg" alt="" /></a></li>--%>
        </ul>
      </div>
      <div class="more-nav"> <a href="#" class="prev">previous</a> <a href="#" class="next">next</a> </div>
    </div>
    <!-- End More Products -->
    <!-- Text Cols -->
    
    <!-- End Text Cols -->
  </div>
  <!-- End Side Full -->
  <!-- Footer -->
  <div id="footer">
    <p class="left"> <a href="Home.aspx">Home</a> <span>|</span> <a href="your_complaint.aspx">Complaint</a> <span>|</span> <a href="LOGIN.aspx">Login</a> <span>|</span> <a href="#">The Store</a> <span>|</span> <a href="LOGIN.aspx">Register</a> </p>
    <p class="right"> &copy; 2014 Shop PhotoArt. Design by <a href="#">PhotoArt</a> </p>
  </div>
  <!-- End Footer -->
</div>
		
    </form>
</body>
</html>
