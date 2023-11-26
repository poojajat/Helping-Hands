<%-- 
    Document   : Home
    Created on : 14-Apr-2023, 7:01:12 pm
    Author     : pjat2
--%>
<%@include file="securityguard.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>







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
          .maindiv
        {
            display: flex;
        }
        .submain2
        {
            padding-left:15px;
        }
        .Parent1{
            border: none;
            margin-top:30px;
            padding-left: 300px;
            padding-right: 200px;
        }
        .mainlink{
             text-decoration: none;
            color:#473441;
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
         .gparent{
            display: flex;
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
         .tabtheme1:hover{
            background-color: #473441;
           color: white;
        }

    </style>
    <head>
        <title>Admin page</title>
    </head>

    <body>
        <div class="maindiv">
            <div class="submain1"> <image src="images/finallogo.png"  width="60" height="60"> </div>
            <div class="submain2"> <h1 align="center"><a href="Home.jsp" class="mainlink">Helping hands</h1> </div>
        </div>
        <form>
        <table  class="tabtheme" align="right">
            <tr>
                   <td class="tabtheme1"><a href="userpage.jsp" class="link">Donate</a></td>
                <td class="tabtheme1"><a href="profile.jsp" class="link">Profile</a></td>
                <td class="tabtheme1"><a href="Complain.jsp" class="link">Complain</a></td>
                <td class="tabtheme1"><a href="viewuserproduct.jsp" class="link">Product</a></td>
                <td class="tabtheme1"><a href="feedback.jsp" class="link">Feedback</a></td>
                <td class="tabtheme1"><a href="settingPass.jsp" class="link">Setting</a></td>
                <td class="tabtheme1"><a href="destroysession.jsp" class="link">SignOut</a></td>
            </tr>
            
        </table>
        </form>
       <div class="gparent">
         <img class="img" src="images/user.png" width="600" height="400">
        
       
       <div class="Parent1">
           <form action="Userpass.jsp">
              
                <fieldset  style="margin-left:-200px; background-color: #D4D7D7;padding-top:30px; padding-bottom: 60px; padding-right:140px; padding-left: 50px;  border: none; border-radius:40px; box-shadow: 20px 20px 20px 20px whitesmoke; margin-top: -30px;">
                    <p class="signup"><b>Change password</b></p>
                    <label class="text" for="email">E-Mail:</label><br>
                    <input class="box" type="text" id="email" name="eMail"><br>
                    <label class="text" for="password">old Password</label><br>
                    <input class="box" type="text"  name="opass"><br><br>
                    <label class="text" for="password">New Password</label><br>
                    <input class="box" type="text"  name="Npass"><br><br>
                    <label class="text" for="password">Confirm new Password</label><br>
                    <input class="box" type="text" id="password" name="conpass"><br><br>
                    <button class="btn1">Change</button>
                   
                </fieldset>
            </form>
        </div>
    </div>  
        
      
    </body>
    
  
</html>

