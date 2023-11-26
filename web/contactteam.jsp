
<%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet,java.util.ArrayList"%>





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
            margin-top:-688px;
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
            padding-left: 300px;
            padding-right: 200px;
        }
        .link
        {
            text-decoration: none;
            width:70%;
           color:#DCCBCF;
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
         .text{
            text-decoration: none;
            width:70%;
           color:#473441;
            font-family:arial;
            height:30px;
            margin-top:-688px;
            text-align:center;
            text-transform: uppercase; 
        }
    </style>
    <head>
        <title>Admin page</title>
    </head>

    <body>
        <div class="maindiv">
            <div class="submain1"> <image src="images/finallogo.png"  width="60" height="60"> </div>
            <div class="submain2"> <h1 align="center"><a href="Home.jsp" class="mainlink">Helping hands</a></h1> </div>
         
        </div>
      
</body>
    
  
</html>
           
