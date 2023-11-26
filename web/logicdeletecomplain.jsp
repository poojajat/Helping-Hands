<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

    <%
 
   String eMail=request.getParameter("eMail");
  
    
Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            PreparedStatement st=con.prepareStatement("Delete from complaintable where EID=?");
            
            st.setString(1,eMail);
           
            st.executeUpdate();
            con.close();
        response.sendRedirect("adminpage.jsp");
%>

