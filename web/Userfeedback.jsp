<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

    <%
 
   String EID=request.getParameter("EID");
   String fname=request.getParameter("fname");
       String feedback=request.getParameter("feedback");
          String contact=request.getParameter("contact");
    
Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            PreparedStatement st=con.prepareStatement("insert into feedbacktable values(?,?,?,?)");
            
            st.setString(1,EID);
            st.setString(2,fname);
            st.setString(3,feedback);
            st.setString(4, contact);
            st.executeUpdate();
            con.close();
        response.sendRedirect("userpage.jsp");
%>



