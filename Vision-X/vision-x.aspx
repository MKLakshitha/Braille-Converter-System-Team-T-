<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="vision-x.aspx.cs" Inherits="Vision_X._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
  <title>Vision-X</title>
  <link rel="icon" type="image/x-icon" href="/images/logo.png">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="/css/style.css">
  <link rel="stylesheet" href="/css/navbar.css">
 
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
               
            <a class = "logo" href="#"><img src="/images/logo.png" alt="" height="45"></a>
            <a class="navbar-brand vision-x" href="vision-x.aspx"> VISION-X</a>
      
          </div>
          <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
              <li class="active"><a href="vision-x.aspx" >HOME</a></li>
              <li><a href="#about">ABOUT</a></li>
              <li><a href="vxtool.aspx">TOOL</a></li>
              <li><a href="catalog.aspx">CATALOG</a></li>
            </ul>
          </div>
        </div>
    </nav>
    <div class="container-fluid bg1 jarallax" style="overflow:hidden">
        <div class="row v3 ">
            <div class="col-sm-6 v4">
                <h1 class="homepage-quote text-uppercase">A Vision is for Everyone</h1>
                <p class="sub-quote">Empowering the community through tactile drawings and Braille text on 3D printers.</p>
               <center>
                <a href="#tool-info"> <span class="butn-link" >learn more &nbsp; &nbsp;<span class="glyphicon glyphicon-arrow-right"></span></span> </a><br class="btnbreak"><br class="btnbreak">
                <a href="vxtool.aspx"> <span class="butn-link2" >Advance to tool &nbsp; &nbsp;<span class="glyphicon glyphicon-arrow-right"></span></span> </a>
              </center>
            </div>
            <div class="col-sm-6"><img class="img-1" src="/images/mask.png" alt="face without eyes"/></div>
        </div>
    </div>
    <!--section 2- tool info-->
    <div class="container-fluid" id="tool-info">
        <div class="row">
            <div class="col-sm-6" >
                <div class="v76_29">
                    <b>What our tool does?</b><br><br>
                    Our free tool that can draw various shapes for the newly constructed 3D printer that allows blind people to touch and feel drawings.
                    By simply interacting with a couple of features easily create any shapes or even draw new shapes using our tool.
                    <br><br><center><a href="vxtool.aspx"> <span class="butn-link3">advance to tool</span></a></center>
                  </div>
            </div>
            <div class="col-sm-6 d-flex justify-content-center center" style="height:100vh;"><img src=" /images/close-eyes.jpg" alt="" class="img-close"></div>
        </div>
    </div>  
    <br><br>

    <!--further details of tool-->
    <div class="container tool-ss">
      <h1 style="margin-bottom: 30px;"><span style="color:black; background-color: #Dfdfdf;;">&nbspVX tool &nbsp</span> - features that stand out! <span id="showDiv" class="glyphicon glyphicon-plus shower"></span></h1>
    </div>
    <div class="container tool-ss tool-ss2" id="myDiv" style="display: none">
        <div class="row"><center>
            <div class="col-sm-6"><img src="/images/sc1.gif" alt="screenshot of vx tool"></div>
            <div class="col-sm-6 txt">1. Select a range of shapes in our dropdown list, adjust their sizes, and input parameters. Boom! your shape is generated. Its that simple.  </div>
          </center>
          </div>
          <div class="row"><center>
            <div class="col-sm-6 txt">2. Even if it is a paragraph or just a word to be in braille, simply type and generate braille characters. </div>
            <div class="col-sm-6"><img src="/images/sc2.gif" alt="screenshot of vx tool"></div>
          </center>
          </div>
          <div class="row"><center>
            <div class="col-sm-6"><img src="/images/sc3.png" alt="screenshot of vx tool"></div>
            <div class="col-sm-6 txt">3. Mobile compatible!. Generate documents on the go and save time. Directly share documents to clients and get ir printed. </div>
          </center>
          </div>
          <div class="row"><center>
            <div class="col-sm-6 txt">4. One tap to save. Check your history, see the shapes you have generated, it saves here automatically. Just forget saving.</div>
            <div class="col-sm-6 "><img src=" /images/sc4.gif" alt="screenshot of vx tool"></div>
          </center>
          </div>
          <div class="row" style="position: relative;"><center>
            <div class="col-sm-6"><img src=" /images/sc5.gif" alt="screenshot of vx tool"></div>
            <div class="col-sm-6 txt">5. Try our beta version of the drawing tool. Create any shape, bring your creativity to life.</div>
          </center>
          <span class="glyphicon glyphicon-minus" id="showDiv2"></span>
        </div>
      
    </div>
<br><br>

    <!-- about us-->
    <div class="container-fluid aboutus" id="about">
      <div class="row">
        <div class="col-sm-4"  >
          <img src=" /images/flower-face.jpg" class="flower" alt="">
        </div>
        <div class="col-sm-8" >
          <h1>ABOUT US</h1>
          <div class="row aboutrow">
            <div class="col-sm-5" >
              <center>
              <strong>Team T</strong><br>
              Our team consists of <a onclick="showmembers()">6 members </a>each having a set of unique academic skills which were all utilised in building this tool.
            </center>
            </div>
            <div class="col-sm-7 pd1" >
            Github public repository - &nbsp<br> <a href="https://github.com/MKLakshitha/Braille-Converter-System-Team-T-">Braille Converter System Git repo link</a>
            </div>
            <div class="col-sm-7 pd1" >
              Website hosted Link - &nbsp<br> <a href="http://kavindu2001-001-site1.dtempurl.com/vision-x">Vision-X Homepage</a>
            </div>
          </div>
        </div>
        </div>
      </div>
        <img src=" /images/footer.png" class="footerimg" style="width:100%" />
      </div>
  
    
    <!-- End of html -->

    <script src="/js/jarallax.js"></script>
	<!-- <script src="js/SmoothScroll.min.js"></script> -->
	<script type="text/javascript">
        /* init Jarallax */
        $('.jarallax').jarallax({
            speed: 0.5,
            imgWidth: 1366,
            imgHeight: 768
        })

        function showmembers() {
            window.alert("The Team behind VX-Tool: \nRuwanthi - Project Manager \nPraveen.T - UI/UX developer \nLakshitha - Backend Developer \nUshani - Software Architect \nHimesha - QA Engineer \n");
        }

        $(document).ready(function () {
            $("#showDiv").click(function () {
                $("#myDiv").fadeToggle("slow"); // Use the .fadeToggle() method with the "slow" parameter to achieve a slow transition effect
            });
        });
        $(document).ready(function () {
            $("#showDiv2").click(function () {
                $("#myDiv").fadeToggle("slow"); // Use the .fadeToggle() method with the "slow" parameter to achieve a slow transition effect
            });
        });

    </script>
</body>
</html>
  
  
