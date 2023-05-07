<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Paint.aspx.cs" Inherits="Vision_X.Paint" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
          <title>Vision-X</title>
  <link rel="icon" type="image/x-icon" href="/images/logo.png">
      
        <script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.7.2/p5.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.7.2/addons/p5.dom.min.js"></script>
        <script src="Scripts/gridcanvas.js"></script>
        <script src="Scripts/braillepaint.js"></script>

        <link rel="stylesheet" href="Style/main.css">
        <link rel="stylesheet" href="Style/iosevka.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/solid.css" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/fontawesome.css" crossorigin="anonymous">
    </head>
    <body>
        <button style="margin:30px; border-radius:10px; color: red; " onclick="window.print()">Print This page</button>
        <div id="top-menu"></div>
        <div id="tools"></div>
        <div id="braille-canvas"></div>
        <div id="msgbox-overlay" class="dark-overlay">
            <div id="braille-msgbox" class="msgbox">
            </div>
        </div>
    </body>
    </body>
</html>
