<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

    <%
 
   String EID=request.getParameter("EID");
   String date=request.getParameter("date");
       String cname=request.getParameter("cname");
          String complain=request.getParameter("complain");
    
Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            PreparedStatement st=con.prepareStatement("insert into complaintable values(?,?,?,?)");
            
            st.setString(1,EID);
            st.setString(2,date);
            st.setString(3,cname);
            st.setString(4, complain);
            st.executeUpdate();
            con.close();
        response.sendRedirect("userpage.jsp");
%>



