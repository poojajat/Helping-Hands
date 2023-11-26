<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

    <%
 
   String eMail=request.getParameter("eMail");
   String opass=request.getParameter("opass");
       String Npass=request.getParameter("Npass");
          String conpass=request.getParameter("conpass");
    
Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            PreparedStatement st=con.prepareStatement(
              "select * from admins where EMail=? and Password=?");
            st.setString(1,eMail);
                st.setString(2,opass); 
             ResultSet rs=st.executeQuery();
  if(rs.next())
{
     if(Npass.equals(conpass))
     {
     PreparedStatement st1=con.prepareStatement(
     "update admins set Password=? where EMail=?");
     st1.setString(1,Npass);
     st1.setString(2,eMail);
     st1.executeUpdate();
     response.sendRedirect("adminpage.jsp");
    }
    else
    {
    out.println("new password and confirm password doesnt match");
    }
}
else {
     out.println("invalid password");
}
%>



