<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

    <%
 
   String EID=request.getParameter("eMail");
  
    
Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            PreparedStatement st=con.prepareStatement("Delete from sign_up where  EMail=?");
            
            st.setString(1,EID);
           
            st.executeUpdate();
            con.close();
        response.sendRedirect("adminpage.jsp");
%>

