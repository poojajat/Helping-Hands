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
/*        .Parent1{
            margin-top: 20px;
            padding-left: 300px;
            padding-right: 200px;
        }
        .signup{
            font-size: 25px;
        }
        .text{
            font-size: 18px;
        }
        .box{
            width: 300px;
        }*/
        .cbox{
            border: none;
            border-radius: 10px;
            width: 300px;
            height: 100px;
        }

        
        .Parent1{
           
            border: none;
            margin-right:40px;
            margin-top:-10px;
            padding-left:100px;
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
           <form action="Usercomplain.jsp">
              
                <fieldset  style="background-color: #D4D7D7;padding-top:30px; padding-bottom: 50px; padding-right:140px; padding-left: 50px;  border: none; border-radius:40px; box-shadow: 20px 20px 20px 20px whitesmoke; margin-top: 5px; ">
                    <p class="signup"><b>Complain form</b></p>
                    <label class="text" for="email">Enter your E-Mail ID:</label><br>
                    <input class="box" type="text"  id="email" name="EID"><br>
                    <label class="text" for="password">Date of complain</label><br>
                    <input class="box" type="text" name="date"><br><br>
                    <label class="text" for="password">Name of the company/person against which/whom the complaint is filed:</label><br>
                    <input class="box" type="text" id="password" name="cname"><br><br>
                     <label class="text" for="password">Complain</label><br>
                     <input class="cbox" type="text" maxlength="500" id="password" name="complain"><br><br>
                    <button class="btn1">Submit</button>
                   
                </fieldset>
            </form>
        </div>
        </div>
  
        
      
    </body>
    
  
</html>

