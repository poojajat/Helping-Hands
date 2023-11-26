
<%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet,java.util.ArrayList"%>


<%@include file="adminsecurityguard.jsp"%>


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
             <table style="padding-left:500px; margin-top: 15px;">
          <tr>  <td style="padding-left:20px;"> <a href="deletecomplain.jsp" class="text">Delete Complain </a>
              </td>
              <td style="padding-left:20px;"> <a href="contactteam.jsp" class="text">Contact Team</a>
               <td style="padding-left:20px;"> <a href="adminsetting.jsp" class="text">Setting</a>
              </td>
               <td style="padding-left:20px;"> <a href="destroyadminsession.jsp" class="text">Sign out</a>
              </td>
          </tr>
              </table>
        </div>
       <%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet,java.util.ArrayList"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            PreparedStatement st=con.prepareStatement("Select* from productinfo");
            ResultSet rs=st.executeQuery();
            ArrayList list1=new ArrayList();
            ArrayList list2=new ArrayList();
            ArrayList list3=new ArrayList();
            ArrayList list4=new ArrayList();
            ArrayList list5=new ArrayList();
            ArrayList list6=new ArrayList();
            while(rs.next())
            {
            list1.add(rs.getString(1));
             list2.add(rs.getString(2));
              list3.add(rs.getString(3));
               list4.add(rs.getString(4));
                list5.add(rs.getString(5));
                 list6.add(rs.getString(6));
}
%>
<div style="display:flex;">

<div style="background-size: 100%;  background-color:#603818; 
     background-repeat: no-repeat; width:500px; height:100%; border-radius: 20px; margin-left:150px; margin-top: 55px;">
    <h3 style="text-align:center; padding-top: 20px; color: #FFEBB8">Complains information</h3>
    <table cellspacing="5" cellpadding="10" align="center"  >
        <tr style="color:#DCCBCF; font-weight: bold; font-size: 20px;">
            <td>Product image</td>
            <td>Product Category</td>
            <td>Product Name</td>
             <td>Product Description</td>
             <td>Product Details</td>
             <td>Uploader Name</td>
        </tr>
        <% 
            for(int i=0;i<list1.size(); i++)
            {
            %>
            <tr align="center" style="color: white">
                <td> <%=list1.get(i)%></td>
                <td> <%=list2.get(i)%></td>
                 <td> <%=list3.get(i)%></td>
                 <td> <%=list4.get(i)%></td>
                 <td> <%=list5.get(i)%></td>
                 <td> <%=list6.get(i)%></td>
            </tr>
            <% }
%>
    </table>
   
</div>
    <div style="margin-top:15px; padding-left: 250px;">
        <table  cellspacing="50" cellpadding="10" align="center">
            <tr>
                <td style="background-color:#603818; width:150px;height:100px; border-radius: 20px; text-align: center"><a href="adminpage.jsp" class="link">View Users</a></td>
            </tr>
            <tr>
                <td style="background-color:#603818; width:150px;height:100px; border-radius: 20px; text-align: center"><a href="viewfeedback.jsp" class="link">View Feedback</a></td>
            </tr>
             <tr>
                <td style="background-color:#603818; width:150px;height:100px; border-radius: 20px; text-align: center"><a href="viewdonerreq.jsp" class="link">View Doner Requests </a></td>
            </tr>
        </table>
    </div>
       
</div>  
</body>
    
  
</html>
            

