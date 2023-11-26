<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

    <%
 
   String file=request.getParameter("file");
   String pcat=request.getParameter("pcat");
       String pname=request.getParameter("pname");
          String pdes=request.getParameter("pdes");
           String pdetail=request.getParameter("pdetail");
            String uname=request.getParameter("uname");
             String contact=request.getParameter("contact");
              String add=request.getParameter("add");
    
Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            PreparedStatement st=con.prepareStatement("insert into productinfo values(?,?,?,?,?,?,?,?)");
            
            st.setString(1,file);
            st.setString(2,pcat);
            st.setString(3,pname);
            st.setString(4, pdes);
              st.setString(5, pdetail);
                st.setString(6, uname);
                  st.setString(7, contact);
                    st.setString(8,add);
            st.executeUpdate();
            con.close();
        response.sendRedirect("userpage.jsp");
%>



