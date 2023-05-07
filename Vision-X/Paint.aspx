<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Paint.aspx.cs" Inherits="Vision_X.Paint" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>VX Beta Tool</title>
  <link rel="icon" type="image/x-icon" href="~/images/logo.png">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="~/css/style.css">
  <link rel="stylesheet" href="~/css/navbar.css">
 
  <link href="https://fonts.googleapis.com/css?family=Futura&display=swap" rel="stylesheet" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.7.2/p5.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.7.2/addons/p5.dom.min.js"></script>
        <script src="Scripts/gridcanvas.js"></script>
        <script src="Scripts/braillepaint.js"></script>

        <link rel="stylesheet" href="style/main.css">
        <link rel="stylesheet" href="style/iosevka.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/solid.css" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/fontawesome.css" crossorigin="anonymous">
    <script>
        function print(el) {
            var restorepage = $('body').html();
            var print= $('#' + el).clone();
            $('body').empty().html(print);
            window.print();
            $('body').html(restorepage);
        }
    </script>
    
</head>
<body>
   
    <section >
        <div style ="margin-top:100px;">
    <form id="form1" >
       <div id="top-menu"></div>hi
        <div id="tools"></div>
        <div id="braille-canvas"></div>
        <div id="msgbox-overlay" class="dark-overlay">
            <div id="braille-msgbox" class="msgbox">   
            </div>        
        </div>
    </form>
        </div>
      </section>
</body>
</html>
