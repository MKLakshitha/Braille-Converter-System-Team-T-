<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="catalog.aspx.cs" Inherits="Vision_X.catalog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
  <title>VX Catalog</title>
  <link rel="icon" type="image/x-icon" href=" /images/logo.png">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href=" /css/navbar.css">
  <link rel="stylesheet" href=" /css/catalog.css"
 
  <link href="https://fonts.googleapis.com/css?family=Futura&display=swap" rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


</head>
<body>
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>                        
              </button> 
               
            <a class = "logo" href="vision-x.aspx"><img src=" /images/logo.png" alt="" height="45"></a>
            <a class="navbar-brand vision-x" href="vision-x.aspx"> VISION-X</a>
            
          </div>
          <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
              <li><a href="vision-x.aspx" >HOME</a></li>
              <li><a href="vision-x.aspx#about">ABOUT</a></li>
              <li><a href="vxtool.aspx">TOOL</a></li>
              <li class="active"><a href="catalog.aspx">CATALOG</a></li>
            </ul>
          </div>
        </div>
    </nav>
    <center><h1 class="catalogpage-quote">CATALOG</h1> </center>      

    <!--Section 01- Alphabet Info-->
    <section>
        <div class="container-catlog" id="alphabet" style="position:absolute;">
            <h2 class="alphabet-catalog">BRAILLE ALPHABET</h2>
            <center><img class="alp-img" src=" /images/braille.png"></center>
        </div>
    </section>
    <section>
    
  </section>  
  </body>

</html>
