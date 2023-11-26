


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
        .text{
            color:#DCCBCF; 
        }
        .signup{
              color:#DCCBCF;
               font-weight: bold;
               font-size: 20px;
        }
        .link{
            text-decoration: none;
         color: #473441;
        }

    </style>
    <head>
        <title>Admin page</title>
    </head>

    <body>
        <div class="maindiv">
            <div class="submain1"> <image src="images/finallogo.png"  width="60" height="60"> </div>
            <div class="submain2"> <h1 align="center"><a href="adminpage.jsp" class="link">Helping hands</a></h1> </div>
        </div>
       
       
       <div class="Parent1">
        <form action="logicdeleteuser.jsp">
              
                <fieldset  style="background-color: #473441; padding:50px; border: none; border-radius:40px; box-shadow: 20px 20px 20px 20px whitesmoke;">
                    <p class="signup"><b>Delete user</b></p>
                    <label class="text" for="email">E-Mail:</label><br>
                    <input class="box" type="text" id="email" name="eMail"><br><br>
                    
                    <button class="btn1">Submit</button>
                   
                </fieldset>
            </form>
  </div>
  
        
      
    </body>
    
  
</html>
