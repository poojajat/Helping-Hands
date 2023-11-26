<%
    response.addHeader("Pragma","no-Cache");
    response.addHeader("Cache-Control","no-Store");
    if(session==null)
    {
    response.sendRedirect("ResponsivePerson.jsp");
}
String name=(String)session.getAttribute("Call");
if(name==null)
{
response.sendRedirect("ResponsivePerson.jsp");
}
%>
