<%-- 
    Document   : Home
    Created on : 14-Apr-2023, 7:01:12 pm
    Author     : pjat2
--%>

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
        
          .maindiv
        {
            display: flex;
        }
        .submain2
        {
            padding-left:15px;
        }
      
         .tabtheme{
            width:70%;
            color:#473441;
            font-family:arial;
            height:30px;
            margin-top:-60px;
            text-align:center;
            text-transform: uppercase;
/*            box-shadow:0px 0px 70px white;
                */
        }
        .tabtheme1{
            padding-top:20px;
            padding-bottom: 20px;
        }
        .text{
            font-size: 18px;
        }
         .tabtheme1:hover{
            background-color: #473441;
           color: white;
        }
        .login{
            text-align: center;
        }
        .signup{
            font-size: 25px;
            
        }
        .link
        {
            text-decoration: none;
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
        .Parent1{
            border: none;
            margin-top:100px;
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
        

    </style>
    <head>
        <title>Admin page</title>
    </head>

    <body>
        <div class="maindiv">
            <div class="submain1"> <image src="images/finallogo.png"  width="60" height="60"> </div>
            <div class="submain2"> <h1 align="center">Helping hands</h1> </div>
        </div>
<!--         <table  class="tabtheme" align="right">
            <tr>
                <td class="tabtheme1"><a href="Home.jsp" class="link">Home</a></td>
                <td class="tabtheme1">about</td>
                <td class="tabtheme1"><a href="Complain.jsp" class="link">Complain</a></td>
                <td class="tabtheme1"><a href="feedback.jsp" class="link">Feedback</a></td>
                <td class="tabtheme1"><a href="contactus.jsp" class="link">Contact Us</a></td>
                <td class="tabtheme1">Products</td>
            </tr>
            
        </table>-->
       
       
       <div class="Parent1">
           <form action="AdminLogin.jsp">
              
                <fieldset style="background-color: #D4D7D7; padding:50px; border: none; border-radius:40px;">
                    <p class="signup"><b>Admin LogIn</b></p>
                   <label class="text" for="fname">E-MAIL:</label><br>
                    <input class="box" type="text"  name="email"><br>
                    <label class="text" for="password">Password</label><br>
                    <input class="box" type="text"  name="password"><br><br>
                    <button class="btn1">LogIn</button>
                   
                </fieldset>
            </form>
        </div>
  
        
      
    </body>
    
  
</html>

