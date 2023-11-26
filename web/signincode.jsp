<%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

    <%
 
   String eMail=request.getParameter("eMail");
   String password=request.getParameter("password");
    
Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            PreparedStatement st=con.prepareStatement(
              "select * from sign_up where EMail=? and Password=?");
            st.setString(1,eMail);
                st.setString(2,password);         
             ResultSet rs=st.executeQuery();
  if(rs.next())
{
Cookie ck=new Cookie("packers",eMail);
ck.setMaxAge(200000);
response.addCookie(ck);
session.setAttribute("Call",eMail);
     response.sendRedirect("userpage.jsp");
}
else {
     out.println("invalid password");
}
%>
