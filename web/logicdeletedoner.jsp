<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

    <%
 
   String pname=request.getParameter("pname");
  
    
Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            PreparedStatement st=con.prepareStatement("Delete from productinfo where Productname=?");
            
            st.setString(1,pname);
           
            st.executeUpdate();
            con.close();
        response.sendRedirect("adminpage.jsp");
%>

