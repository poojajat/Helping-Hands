<%-- 
    Document   : destroyadminsession
    Created on : 25-Apr-2023, 8:23:10 pm
    Author     : pjat2
--%>

<%
    session.invalidate();
    response.sendRedirect("ResponsivePerson.jsp");
    %>
