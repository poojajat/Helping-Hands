
<%@include file="securityguard.jsp"%>
<html>
    <style>
        body{
            background-color: #DCCBCF;
        }
        h1{
            font-size:22px;
            font-family: Copperplate, Papyrus, fantasy;
            color:#473441;
            
        }
        .tabtheme{
            width:70%;
            color:#473441;
            font-family:arial;
            height:30px;
            margin-top:-80px;
            text-align:center;
            text-transform: uppercase;
/*            box-shadow:0px 0px 70px white;
                */
        }
        .tabtheme1{
            padding-top:20px;
            padding-bottom: 20px;
        }
        .tabtheme1:hover{
            background-color: #473441;
           color: white;
        }
        .maindiv
        {
            display: flex;
        }
        .submain2
        {
            padding-left:15px;
        }
       .link
        { text-decoration: none;
            width:70%;
            color:#473441;
            font-family:arial;
            height:30px;
            margin-top:-688px;
            text-align:center;
            text-transform: uppercase;
        }
        .link:hover{
            background-color: #473441;
           color: white;
        }
        .mainlink{
            text-decoration: none;
            color:#473441;
        }
         .gparent{
            display: flex;
        }
         .Parent1{
           border: 0px;
           width:50%;
           padding-left:100px;
           padding-right:50px;
         
       }
       .donate{
           
       }
       .box{
            border: none;
            border-radius: 10px;
            width:300px;
            height: 30px;
        }
        .btn1{
            width:90px;
            height: 50px;
            border-radius: 10px;
            border: none;
            background-color: #DCCBCF;
        }
        
    </style>
    <head>
        <title>USER PAGE</title>
    </head>

    <body>
        <div class="maindiv">
            <div class="submain1"> <image src="images/finallogo.png"  width="60" height="60"> </div>
            <div class="submain2"> <h1 align="center"><a href="Home.jsp" class="mainlink">Helping hands</a></h1> </div>
        </div>
        
        <form>
        <table  class="tabtheme" align="right">
            <tr>
                <td class="tabtheme1"><a href="userpage.jsp" class="link">Donate</a></td>
                <td class="tabtheme1"><a href="profile.jsp" class="link">Profile</a></td>
                <td class="tabtheme1"><a href="Complain.jsp" class="link">Complain</a></td>
                <td class="tabtheme1"><a href="viewuserproduct.jsp" class="link">Product</td>
                <td class="tabtheme1"><a href="feedback.jsp" class="link">Feedback</a></td>
                <td class="tabtheme1"><a href="settingPass.jsp" class="link">Setting</a></td>
                <td class="tabtheme1"><a href="destroysession.jsp" class="link">SignOut</a></td>
            </tr>
            
        </table>
        </form>
        <div class="gparent">
        <div>  <img class="img" src="images/user.png" width="600" height="400"> </div>
        
        <div class="Parent1">
       <form action="Userproduct.jsp">
              
           <fieldset  style="background-color: #D4D7D7;padding-top:30px; padding-bottom: 50px; padding-right: 50px; padding-left: 50px;  border: none; border-radius:40px; box-shadow: 20px 20px 20px 20px whitesmoke;">
                    <p class="donate"><b>Donate here</b></p>
                    <label class="text" for="file">Product Image:</label><br>
                    <input class="box" type="file" id="file" name="file"><br>
                    <label class="text" for="pcat">Product Category:</label><br>
                    <input class="box" type="text" id="pcat" name="pcat"><br>
                    <label class="text" for="pname">Product Name:</label><br>
                    <input class="box" type="text" id="pname" name="pname"><br>
                    <label class="text" for="pdes">Product Description:</label><br>
                    <input class="box" type="text" id="pdes" name="pdes"><br>
                    <label class="text" for="pdetail">Product Details:</label><br>
                    <input class="box" type="text" id="pdetail" name="pdetail"><br>
                       <label class="text" for="uname">Uploader Name:</label><br>
                    <input class="box" type="text" id="uname" name="uname"><br>
                     <label class="text" for="contact">Contact:</label><br>
                    <input class="box" type="text" id="contact" name="contact"><br>
                     <label class="text" for="pdetail">Address:</label><br>
                    <input class="box" type="text" id="add" name="add"><br>
                      <button class="btn1">Submit</button>
                </fieldset>
       </form>
         </div>
        </div>
    </body>
    
  
</html>
