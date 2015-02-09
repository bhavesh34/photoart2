<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" >
       

    function PreviewImage() {
        var oFReader = new FileReader();
        oFReader.readAsDataURL(document.getElementById("uploadImage").files[0]);

        oFReader.onload = function (oFREvent) {
            document.getElementById("uploadPreview").src = oFREvent.target.result;
        };
    };


    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <img id="uploadPreview" style="width: 100px; height: 100px;" />
<input id="uploadImage" type="file" name="myPhoto" onchange="PreviewImage();" />
    </div>
    </form>
</body>
</html>
