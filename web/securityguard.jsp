<%
    response.addHeader("Pragma","no-Cache");
    response.addHeader("Cache-Control","no-Store");
    if(session==null)
    {
    response.sendRedirect("Home.jsp");
}
String name=(String)session.getAttribute("Call");
if(name==null)
{
response.sendRedirect("Home.jsp");
}
%>
