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
            width: 300px;
            height: 100px;
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
         .Parent1{
             margin-top:-10px;
           border: 0px;
           width:50%;
           padding-left:100px;
           padding-right:20px;
         
       }
        .box{
            font-family:arial;
/*            font-size:20;*/
padding-top: 5px;
padding-left: 5px;
            background-color: white;
            width: 400px;
            height: 25px;
        }
         .text{
             font-family:arial;
             border: 30px;
/*            font-size: 20px;*/
            border-color: white;
          
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
        .gparent{
            display: flex;
        }
        .delbtn{
            margin-top: 10px;
            margin-left: 250px;
            width:140px;
            height: 50px;
            border-radius: 10px;
            border: none;
            background-color: #DCCBCF; 
        }
          .delbtn:hover{
            background-color: #473441;
           color: white;
        }
    </style>
    <head>
        <title>Admin page</title>
    </head>

    <body>
        <div class="maindiv">
            <div class="submain1"><image src="images/finallogo.png"  width="60" height="60"> </div>
            <div class="submain2"> <h1 align="center">Helping hands</h1> </div>
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
        <%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
         <%
  
    String email=(String)session.getAttribute("Call");
   
 Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            PreparedStatement st=con.prepareStatement("select* from sign_up where EMail=?");
            
            
            st.setString(1,email);
           ResultSet rs=st.executeQuery();
           String fname="";
           String lname="";
           
           String password="";
          
            String dob="";
             String country="";
              String add="";
               String city="";
                String contact="";
                 String gen="";
                    if(rs.next())
                    {
                     fname=rs.getString(1);
                    lname=rs.getString(2);
                
                    password=rs.getString(4);
                   dob=rs.getString(5);
                   country=rs.getString(6);
                   add=rs.getString(7);
                   city=rs.getString(8);
                   contact=rs.getString(9);
                   gen=rs.getString(10);
         }

%>
   

    </form>
</div>
   <div class="gparent">
         <img class="img" src="images/user.png" width="600" height="400">
        
      <div class="Parent1">
       <form action="Userproduct.jsp">
              
           <fieldset  style="background-color: #D4D7D7;padding-top:30px; padding-bottom: 50px; padding-right:50px; padding-left: 50px;  border: none; border-radius:40px; box-shadow: 20px 20px 20px 20px whitesmoke;">
                    <p class="donate"><b>YOUR PROFILE:</b></p>
                    <label class="text" for="file"> USER FIRST NAME IS:</label><br>
                    <div class="box"><%=fname%></div>
                    <label class="text" for="pcat">USER LAST NAME:</label><br>
                    <div class="box"><%=lname%></div>
                    <label class="text" for="pname">USER E-MAIL IS:</label><br>
                   <div class="box"><%=email%></div>
                    <label class="text" for="pdes">PASSWORD:</label><br>
                     <div class="box"><%=password%></div>
                    <label class="text" for="pdetail">DATE OF BIRTH:</label><br>
                  <div class="box"><%=dob%></div>
                       <label class="text" for="uname">COUNTRY:</label><br>
                     <div class="box"><%=country%></div>
                     <label class="text" for="contact">ADDRESS:</label><br>
                  <div class="box"><%=add%></div>
                     <label class="text" for="pdetail">CITY:</label><br>
                       <div class="box"><%=city%></div>
                     <label class="text" for="pdetail">CONTACT:</label><br>
                       <div class="box"><%=contact%></div>
                     <label class="text" for="pdetail">GENDER:<%=gen%></label><br>
                       <div class="box"><%=gen%></div>
                         <%  
                           String deletebutton=request.getParameter("delbtn");
                           if(deletebutton!=null && deletebutton.equalsIgnoreCase("Delete Profile"))
                           {
                           PreparedStatement st1=con.prepareStatement("delete from sign_up where EMail=?");
                           st1.setString(1,email);
                           st1.executeUpdate();
                           session.invalidate();
                           response.sendRedirect("Home.jsp");
                       
                       }
                       %>
                       <form action="">
                           <input class="delbtn" type="Submit" value="DELETE PROFILE" name="delbtn">
                       </form>
                </fieldset>
       </form>
                      
                       
         </div>  
                       
   </div>
    </body>
    
  
</html>

