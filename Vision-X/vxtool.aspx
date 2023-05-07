<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vxtool.aspx.cs" Inherits="Vision_X.vxtool" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>VX Tool</title>
  <link rel="icon" type="image/x-icon" href="~/images/logo.png">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="~/css/navbar.css">
  <link rel="stylesheet" href="~/css/tool.css">
  <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"> </script>
  <script src = "https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Futura&display=swap" rel="stylesheet" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<<body>

    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>                        
              </button>
             
            <a class = "logo" href="vision-x.aspx"><img src="/images/logo.png" alt="vision-x logo" height="45"></a>
            <a class="navbar-brand vision-x" href="vision-x.aspx"> VISION-X</a>
            
          </div>
          <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
              <li><a href="vision-x.aspx">HOME</a></li>
              <li class="active"><a>TOOL</a></li>
              <li><a href="Paint.aspx" target="_blank">BETA TOOL</a></li>
              <li><a href="catalog.aspx">CATALOG</a></li>
            </ul>
          </div>
        </div>
    </nav>


    <div class="container-fluid">
      <div class="row ">
        <div class="col-sm-4 scroll-div" style="overflow:scroll">
          <div class="dropdown" >
            <button class="dropbtn"><span class="glyphicon glyphicon-list"></span></button>
            <div class="dropdown-content" style="cursor: pointer;">
              <a onclick="window.print()">Print</a>
              <a id="download">Download</a>
              <a href="#">Share</a>
              <a href="Paint.aspx">Try VX-BETA</a>
            </div>
          </div>
          <h4>TOOL DASHBOARD <span class="glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="right" title="Input parameters to generate printing document and information"></span></h4>
          <form runat ="server">
          <div class="select-shape scroll-div" style="height:fit-content">
       
          <table>
            <tr>
              <td><h5><strong>Select shape:</strong></h5> </td>
              <td><select onchange="changeOptions(this)" id="select">
                <option value="" selected="selected">Select shape</option>
                <option value="square" >Square</option>
                <option value="circle" >Circle</option>
                <option value="rectangle" >Rectangle</option>
                <option value="triangle" >Triangle</option>
              </select>
              </td>
            </tr>
          </table>
          </div>

          <div class="select-shape inputpara scroll-div" style="max-height: fit-content;" id="default">
            <h5><b>Input Parameters</b></h5>
            
            <!--Dot size changer of shapes-->
            <table><tr>
              <td>Dot size <span class="glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="right" title="diameter of a dot, leave blank to set default value of xxx"></span>:</td>
              <td><input type="number" id="size-input" value ="14" placeholder="(optional)" style="width: 90%;"  onchange="changeSizeShape()">px</td>
            </tr></table>

            <!-- Square div-->
            <div class="className" id="square" style="display:none" runat="server">
              <table>
                <tr>
                  <td>Side length: </td>
                  <td><input type="text" placeholder="Enter dot count" style="width: 90%;" name="sqrlength" runat="server" id="length"/></td>
                </tr>
                <tr>
                  <td>Fill type:</td>
                  <td>
                    <input type="radio" name="fill_type" value="hollow"> Hollow &nbsp; &nbsp; &nbsp;
                    <input type="radio" name="fill_type" value="solid"> Solid
                  </td>
                </tr>
              </table>
                <asp:Button ID="Button1" runat="server" Text="Generate" OnClick="sqrClick" class="generate-btn"/> 
            </div>

            <!--Circle div-->
            <div class="className" style="display:none" id="circle">
              <table>
                <tr>
                  <td>Circle's Radius: </td>
                  <td><input type="text" placeholder="Enter dot count" id="radius" name="radius" style="width: 90%;" runat="server"></td>
                </tr>
                <tr>
                  <td>Fill type:</td>
                  <td>
                    <input type="radio" name="fill_type" value="hollow"> Hollow &nbsp; &nbsp; &nbsp; 
                    <input type="radio" name="fill_type" value="solid"> Solid
                  </td>
                </tr>
              </table>
               <asp:Button ID="Button2" runat="server" Text="Generate" OnClick="circClick" class="generate-btn" /> 
            </div>

            <!--Rectangle Div-->
            <div class="className" id="rectangle" style="display:none">
              <table>
                <tr>
                  <td>Length: </td>
                  <td><input type="text" placeholder="Enter dot count" id="rectLength" style="width: 90%;" name="rectLength" runat="server" /></td>
                </tr>
                <tr>
                  <td>Breadth: </td>
                  <td><input type="text" placeholder="Enter dot count" id="breadth" name="breadth" style="width: 90%;" runat="server"></td>
                </tr>
                
              </table>
                <asp:Button ID="Button3" runat="server" Text="Generate" Onclick="recClick" class="generate-btn"/> 
            </div> 

            <!--Triangle div -->
            <div class="className" id="triangle" style="display:none">
                <table>
                  <tr>
                    <td>Side height (x): </td>
                    <td><input type="text" name="l1" placeholder="enter dot count" style="width: 80%;" id="x" runat="server">cm</td>
                  </tr>
                  <tr>
                    <td>Side length (y): </td>
                    <td><input type="text" name="l2" placeholder="enter dot count" style="width: 80%;" id="y" runat="server">cm</td>
                  </tr>
                  <tr>
                    <td>Side length (z): </td>
                    <td><input type="text" name="l3" placeholder="enter dot count" style="width: 80%;" id="z" runat ="server">cm</td>
                  </tr>
                  <tr>
                    <td>Fill type:</td>
                    <td>
                      <input type="radio" name="fill_type" value="hollow"> Hollow &nbsp; &nbsp; &nbsp; 
                      <input type="radio" name="fill_type" value="solid"> Solid
                    </td>
                  </tr>
                </table>
               <asp:Button ID="Button4" runat="server" Text="Generate" OnClick="triClick" class="generate-btn"/> 
            </div> 
            
          </table>
           </div>
           <!--Braille text-->
          <div class="select-shape scroll-div">
            <table>
              <h5><b>Braille text to print </h5></b>
              <tr>
                <td valign = top>Enter text  : </td>
                <td><textarea name="" id="myTextbox" style="resize: vertical;" placeholder="Leave blank if no text to convert to Braille"></textarea></td>
              </tr> 
              <!--braille font size editor-->
              <tr>
                <td>Braille size <span class="glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="right" title="diameter of a dot, leave blank to set default value of xxx"></span>:</td>
                <td><input type="number" value ="14" placeholder="(optional)" id="text-size" style="width: 90%" onchange="changeSizeText()">px</td>
              </tr>       
            </table>
        </div>
          <div class="select-shape ink scroll-div">
            <h5><strong>Required ink for shape</strong>&nbsp;&nbsp;&nbsp;<button style="padding:1%;" type="button" onclick="calculateInk()">Calculate</button></h5>
            <table>
              <tr>
                <td>Dot size (px): </td>
                <td><input type="text" id="dotsizeinpx" disabled placeholder="null"></td>
                <td>Dot size (mm):</td>
                <td><input type="text" id="dotsizeinmm" disabled placeholder="null"></td>
              </tr>
              <tr>
                <td>Number of dots:</td>
                <td><input type="text" id="numDots" name="numDots" disabled placeholder="null"></td>
                <td>Ink Per dot: </td>
                <td><input type="text" id="inkPerDot" disabled placeholder="null"/>ml</td>
              </tr>
              <tr>
                <td>Ink needed: </td>
                <td><input type="text" placeholder="null" id ="inkForDots" disabled ></td>
                <td>ml</td><td></td>
              </tr>
            </table>
           </div> 
          <div class="select-shape ink scroll-div">
            <h5><strong>Cost of printing shape</strong> &nbsp;&nbsp;<button style="padding:1%;" type="button" onclick="calculateCost()">Calculate</button></h5>
            <table>
              <tr>
                <td>Price of ink bottle: </td>
                <td>Rs.<input style="width:fit-content" type="text" id="bottleprice" placeholder="enter price (lkr)"></td>
              </tr>
              <tr>
                <td>Liquid size per bottle:</td>
                <td><input style="width:fit-content"  type="text" id="bottlesize" placeholder="in ml">ml</td>
              </tr>
              <tr>
                <td>Cost of printing:</td>
                <td><input style="width:fit-content"  type="text" id="printingcost" disabled placeholder="null"></td>
              </tr>
              </table>
           </div>
          
          </form>
        </div>
           
        <div class="col-sm-8 scroll-div" id="htmlContent" >
          <br>
          <p id="displayShape" style="font-family: Braille1;"></p>
          <p id="displayText" style="font-family: Braille1;" class="hi2"></p>
          <p id="shapeDrawSpace" style="font-family: Braille1;" class="hi3" runat="server"></p> 
        </div>
      </div>
    </div>
    <script>

     


      function calculateCost() {
        const bottlePrice = document.getElementById('bottleprice').value;
        const bottleSize = document.getElementById('bottlesize').value;
        
        if (!bottlePrice || !bottleSize) {
          alert('Costing: Please enter values for all fields!');
          return;
        }
        const liquidCost = bottlePrice / bottleSize;
        const inktot = (document.getElementById("inkForDots").value);
        const cost = (inktot*liquidCost)/1000;
        document.getElementById('printingcost').value = ' Rs.'+ cost.toFixed(4)  ;
      }


      function calculateInk() {
        // Get input values
        let dotSize = document.getElementById("size-input").value;
        //let numDots = document.getElementById("shapeDrawSpace").innerHTML;
          const numDots = document.getElementById("shapeDrawSpace");
          var text = numDots.textContent.replace(/ /g, '').replace(/&nbsp;/g, '');

          var count = 0;
          for (var i = 0; i < text.length; i++) {
              if (text[i] === 'a') {
                  count++;
              }
          }

        // Calculate ink required for one dot
        let screenResolution = window.devicePixelRatio * 96;
              let dotDiameter = (dotSize/screenResolution)*25.4;
        let dotRadius = dotDiameter/2 // Convert pixel size to mm
        let dotVolume = (4/3) * Math.PI * Math.pow(dotRadius, 3);
  
        // Calculate ink required for specified number of dots
        let inkForDots = dotVolume * count;
  
        // Display results
        document.getElementById("dotsizeinpx").value = dotSize + " px";
        document.getElementById("numDots").value = count;
        document.getElementById("dotsizeinmm").value = dotDiameter.toFixed(2)+"mm";
        document.getElementById("inkPerDot").value = (dotVolume/1000).toFixed(4) ;
        document.getElementById("inkForDots").value = (inkForDots/1000).toFixed(4);
      }
    
      //change size of div htmlcontent
      function changeSizeShape() {
        var textSize = document.getElementById("size-input").value;
        document.getElementById("shapeDrawSpace").style.fontSize = textSize + "px";
      }
     
      function changeSizeText() {
        var textSize = document.getElementById("text-size").value;
        document.getElementById("displayShape").style.fontSize = textSize + "px";
        document.getElementById("displayText").style.fontSize = textSize + "px";
      }


      //tooltip info
        $(document).ready(function(){
          $('[data-toggle="tooltip"]').tooltip(); 
        });
      
      //to display div blocks
      $('#select').change(function(){
        $('#default div').hide();
        $('#'+$(this).val()).show();
      });

      //js for translating to braille
        const textbox = document.getElementById("myTextbox");
        const displayText = document.getElementById("displayText");

        textbox.addEventListener("input", function() {
          displayText.textContent = this.value;
        });

        const dropdown = document.getElementById("select");
        const displayShape = document.getElementById("displayShape");

        dropdown.addEventListener("change", function() {
          displayShape.textContent = this.value;
        });

      //downloading as image
      function autoClick(){
        $("#download").click();
      }

      $(document).ready(function(){
        var element = $("#htmlContent");

        $("#download").on('click', function(){
          html2canvas(element, {
            onrendered: function(canvas) {
              var imageData = canvas.toDataURL("image/png");
              var newData = imageData.replace(/^data:image\/png/, "data:application/octet-stream");
              $("#download").attr("download", "image.png").attr("href", newData);
            }
          });
        });
      });
    </script>
    </body>
</html>
