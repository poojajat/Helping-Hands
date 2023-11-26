<%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
    <%
  String fName=request.getParameter("fname");
   String lName=request.getParameter("lname");
    String eMail=request.getParameter("email");
     String password=request.getParameter("password");
     String dob=request.getParameter("dob");
      String country=request.getParameter("country");
          String add=request.getParameter("add");
     String city=request.getParameter("city");
           String contact=request.getParameter("contact");
             String gen=request.getParameter("gen");
    
 Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            PreparedStatement st=con.prepareStatement("insert into sign_up values(?,?,?,?,?,?,?,?,?,?)");
            
            st.setString(1,fName);
            st.setString(2,lName);
            st.setString(3,eMail);
            st.setString(4, password);
            st.setString(5,dob);
            st.setString(6, country);
            st.setString(7, add);
            st.setString(8, city);
            st.setString(9, contact);
           
            st.setString(10, gen);
            st.executeUpdate();
            con.close();
        response.sendRedirect("Home.jsp");
%>
