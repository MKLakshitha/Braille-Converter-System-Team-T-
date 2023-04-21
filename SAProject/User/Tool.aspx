<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tool.aspx.cs" Inherits="SAProject.User.Tool" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
  <title>Vision-X</title>
  <link rel="icon" type="image/x-icon" href="../TemplateFiles/images/logo.png">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="../TemplateFiles/css/navbar.css">
  <link rel="stylesheet" href="../TemplateFiles/css/tool.css">

  <link href="https://fonts.googleapis.com/css?family=Futura&display=swap" rel="stylesheet" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
    <script>
        if (!window.confirm("You are going to use the tool of VISION-X.\nCancel to go back to homepage.")) {
            window.location.href = "Default.aspx";
        }
    </script>
  
<body>
    <form id="form1" runat="server">
            <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>                        
              </button>
             
            <a class = "logo" href="#"><img src="../TemplateFile/images/logo.png" alt="" height="45"></a>
            <a class="navbar-brand vision-x" href="index.html"> VISION-X</a>
            
          </div>
          <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
              <li><a href="index.html" >HOME</a></li>
              <li><a href="#about">ABOUT</a></li>
              <li class="active"><a href="#">TOOL</a></li>
              <li><a href="catalog.html">CATALOG</a></li>
            </ul>
          </div>
        </div>
    </nav>
   
    </form>


    
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-4" style="overflow:none">
          <div class="dropdown" >
            <button class="dropbtn"><span class="glyphicon glyphicon-list"></span></button>
            <div class="dropdown-content">
              <a href="#">Save</a>
              <a href="#">Download image</a>
              <a href="#">Share</a>
              <a href="#">History</a>
            </div>
          </div>
          <h4>TOOL DASHBOARD <span class="glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="right" title="Input parameters to generate printing document and information"></span></h4>
          
          <div class="select-shape">
          <h5><b>Shape and text </h5></b>
          <table>
            <tr>
              <td>Select shape: </td>
              <td><select onchange="changeOptions(this)" id="dropdown">
                <option value="" selected="selected">Select shape</option>
                <option value="sqr" >Square</option>
                <option value="circ" >Circle</option>
                <option value="rect" >Rectangle</option>
                <option value="tri" >Triangle</option>
              </select>
              </td>
            </tr>
            <tr>
              <td valign = top>Enter text  : </td>
              <td><textarea name="" id="myTextbox" style="resize: vertical;" placeholder="Leave blank if no text to print"></textarea></td>
            </tr>        
          </table>
          </div>

          <div class="select-shape inputpara" style="max-height: fit-content;">
            <h5><b>Input Parameters</b></h5>
            <form class="className" name="sqr" style="display:none" >

              <table>
                <tr>
                  <td>Side length: </td>
                  <td><input type="text" placeholder="Enter length" style="width: 90%;" name="length">cm</td>
                </tr>
   
                <tr>
                  <td>Fill type:</td>
                  <td>
                    <input type="radio" name="fill_type" value="hollow"> Hollow &nbsp; &nbsp; &nbsp; 
                    <input type="radio" name="fill_type" value="solid"> Solid
                  </td>
                </tr>
                  <td>Dot size : <span class="glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="right" title="diameter of a dot, leave blank to set default value of xxx"></span></td>
                  <td><input type="text" name="dotsize" placeholder="(optional)" style="width: 90%;"></td>
                </tr>
              </table>
              <a  id="generate-btn">Generate</a>
             
            </form>
            
            <form class="className" name="circ" style="display:none">
              <table>
                <tr>
                  <td>Circle's Radius: </td>
                  <td><input type="text" placeholder="Enter radius (cm)" name="radius" style="width: 90%;">cm</td>
                </tr>
                <tr>
                  <td>Fill type:</td>
                  <td>
                    <input type="radio" name="fill_type" value="hollow"> Hollow &nbsp; &nbsp; &nbsp; 
                    <input type="radio" name="fill_type" value="solid"> Solid
                  </td>
                </tr>
                <tr>
                  <td>Dot size : <span class="glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="right" title="diameter of a dot, leave blank to set default value of xxx"></span></td>
                  <td><input type="text" name="dotsize" placeholder="(optional)" style="width: 90%;"></td>
                </tr>
              </table>
              <a id="generate-btn">Generate</a> 
            </form>
            
            <form class="className" name="rect" style="display:none">
              <table>
                <tr>
                  <td>Length: </td>
                  <td><input type="text" placeholder="Enter radius (cm)" name="radius" style="width: 90%;">cm</td>
                </tr>
                <tr>
                  <td>Breadth: </td>
                  <td><input type="text" placeholder="Enter radius (cm)" name="radius" style="width: 90%;">cm</td>
                </tr>
                <tr>
                  <td>Fill type:</td>
                  <td>
                    <input type="radio" name="fill_type" value="hollow"> Hollow &nbsp; &nbsp; &nbsp; 
                    <input type="radio" name="fill_type" value="solid"> Solid
                  </td>
                </tr>
                <tr>
                  <td>Dot size : <span class="glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="right" title="diameter of a dot, leave blank to set default value of xxx"></span></td>
                  <td><input type="text" name="dotsize" placeholder="(optional)" style="width: 90%;"></td>
                </tr>
              </table>
              <a id="generate-btn">Generate</a>
            </form> 

            <form class="className" name="tri" style="display:none">
              <form class="className" name="sqr" style="display:none">
                <table>
                  <tr>
                    <td>Side length (x): </td>
                    <td><input type="text" placeholder="enter base length" style="width: 80%;">cm</td>
                  </tr>
                  <tr>
                    <td>Side length (y): </td>
                    <td><input type="text" placeholder="enter length" style="width: 80%;">cm</td>
                  </tr>
                  <tr>
                    <td>Side length (z): </td>
                    <td><input type="text" placeholder="enter length" style="width: 80%;">cm</td>
                  </tr>
                  <tr>
                    <td>Fill type:</td>
                    <td>
                      <input type="radio" name="fill_type" value="hollow"> Hollow &nbsp; &nbsp; &nbsp; 
                      <input type="radio" name="fill_type" value="solid"> Solid
                    </td>
                  </tr>
                  <tr>
                    <td>Dot size : <span class="glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="right" title="diameter of a dot, leave blank to set default value of xxx"></span></td>
                    <td><input type="text" name="dotsize" placeholder="(optional)" style="width: 90%;"></td>
                  </tr>
                </table>
                <a id="generate-btn">Generate</a>
            </form> 
             
           </div>
           <div class="select-shape ink">
            <h5><strong> Ink Details</strong></h5>
            <table>
              <tr>
                <td>Dot size: </td>
                <td><input type="text" placeholder="3mm" disabled></td>
                <td>Ink Per dot: </td>
                <td><input type="text" placeholder="0.005ml" disabled></td>
              </tr>
              <tr>
                <td>No. of dots:</td>
                <td><input type="text" placeholder="60" disabled></td>
                <td>Ink needed: </td>
                <td><input type="text" placeholder="0.3ml" disabled></td>
              </tr>
            </table>
           </div> 
        </div>
        <div class="col-sm-8" >
          <br>
          <p id="displayText" style="font-family: Braille1;"></p>
          <p id="displayShape" style="font-family: Braille1;"></span>
          <p id="drawShape"></p>

        </div>
      </div>
    </div>

    <script>
        function changeOptions(selectEl) {
            let selectedValue = selectEl.options[selectEl.selectedIndex].value;
            let subForms = document.getElementsByClassName('className')
            for (let i = 0; i < subForms.length; i += 1) {
                if (selectedValue === subForms[i].name) {
                    subForms[i].setAttribute('style', 'display:block')
                } else {
                    subForms[i].setAttribute('style', 'display:none')
                }
            }
        }
        //tooltip info
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });

        //js for translating to braille
        const textbox = document.getElementById("myTextbox");
        const displayText = document.getElementById("displayText");
        
        textbox.addEventListener("input", function () {
            displayText.textContent = this.value;
        });

        const dropdown = document.getElementById("dropdown");
        const displayShape = document.getElementById("displayShape");
        const drawShape = document.getElementById("drawShape");
        dropdown.addEventListener("change", function () {
            displayShape.textContent = this.value;
        });
    </script>


</body>
</html>
