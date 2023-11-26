<%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

    <%
 String btn=request.getParameter("btn");
 int RESULT=0;
 int VALIDATION=0;
 if(btn!=null && btn.equals("login"))
 {
         
   String eMail=request.getParameter("eMail");
   String password=request.getParameter("password");
   
   if(eMail.equals("")&& password.equals(""))
   {
   VALIDATION=3;
    }
   else if(password.equals(""))
   {
   VALIDATION=2;
    }
      else if(eMail.equals(""))
   {
   VALIDATION=1;
    }
    else{

Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            PreparedStatement st=con.prepareStatement(
              "select * from sign_up where EMail=? and Password=?");
            st.setString(1,eMail);
                st.setString(2,password);         
             ResultSet rs=st.executeQuery();
  if(rs.next())
{
Cookie ck=new Cookie("packers",eMail);
ck.setMaxAge(200000);
response.addCookie(ck);
session.setAttribute("Call",eMail);
     response.sendRedirect("userpage.jsp");
}
else {
    RESULT=1;
}
}
}
%>

<html>
    <style>
       body{
            background-color: #DCCBCF;
        }
        .main
        {
            padding-left: 300px;
            padding-right:300px;
            margin-top: 80px;
       }
        .signin
        {
            font-size: 40px;
        }
        
        .LOGIN
        {
            font-size:25px;
           
        }
        .heading
        {
             font-size:45px;
            font-family: Copperplate, Papyrus, fantasy;
            color:#473441;;
        }
        .gParent
        {
            background-color: #D4D7D7;
            display: flex;
            
            margin-left:150px;
            margin-right: 200px;
            padding-left:50px;
          padding-top: 50px;
           padding-right: 50px; 
        }
        .Parent1{
          
             
        }
        .Parent2{
              margin-top:50px;
              margin-left: 50px;
             
            
        }
        .btn{
                        background-color: #DCCBCF; 
        }
        .mparent{
            display: flex;
            margin-top: 50px;
        }
        .logo{
            padding-left: 30px;
            
        }
    </style>
    <head>
        <title>Log in </title>
    </head>

    <body>
        <div class="heading">Welcome in Helping hands</div>
        <div class="mparent">
         <div class="logo"><img src="images/finallogo.png" width="400" height="400"></div>
        
               <div class="gParent">
                   <div class="Parent1">
           <form action="">
              
                <fieldset style="border:0px;">
                    <p class="signin"><b>LogIn</b></p>
                      
                    
                    <label class="text" for="fname">E-Mail:</label><br>
                    <input class="box" type="text"  name="eMail"><br>
                    <label class="text" for="password">Password</label><br>
                    <input class="box" type="password"  name="password"><br><br>
                    <button class="btn" value="login" name="btn">login</button>
                     <%
                        if(btn!=null && RESULT==1)
                        { 
                        %>
                        <p style="background-color:#DCCBCF;">Invalid i/password</p>
                  <%  }%>
                  
                   <%
                        if(btn!=null && VALIDATION==1)
                        { 
                        %>
                        <p style="background-color:#DCCBCF;">Id is required</p>
                  <%  }%>
                  
                    <%
                        if(btn!=null && VALIDATION==2)
                        { 
                        %>
                      <p style="background-color:#DCCBCF;">Password is required</p>
                  <%  }%>
                  
                    <%
                        if(btn!=null && VALIDATION==3)
                        { 
                        %>
                        <p style="background-color:#DCCBCF; ">Both fields are needed</p>
                  <%  }%>
                 
                 
                </fieldset>      
            </form>
                   </div>
              <div class="Parent2"><img src="images/loginlogof.png" width="250" height="250"></div>
        </div>
                    
        </div> 
    </body>
    
  
</html>