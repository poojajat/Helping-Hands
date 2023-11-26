<%-- 
    Document   : Home
    Created on : 14-Apr-2023, 7:01:12 pm
    Author     : pjat2
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

    <%
 
   String email=request.getParameter("email");
   String password=request.getParameter("password");
    
    
Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            PreparedStatement st=con.prepareStatement(
              "select * from admins where EMail=? and Password=?");
            st.setString(1,email);
            st.setString(2,password);         
             ResultSet rs=st.executeQuery();
  if(rs.next())
{
     String post=rs.getString(3);
     if(post.equalsIgnoreCase("admin"))
     {
     session.setAttribute("Call",email);
     response.sendRedirect("adminpage.jsp");
    }
    if(post.equalsIgnoreCase("operator"))
    {
    session.setAttribute("Call",email);
    response.sendRedirect("oppage.jsp");
    }
}
else {
     out.println("invalid password");
}
%>

