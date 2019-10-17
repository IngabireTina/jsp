<%-- 
    Document   : DeleteStudentReg
    Created on : Oct 5, 2019, 6:03:23 PM
    Author     : ingabire
--%>

<%@page import="Dao.StudentDao"%>
<%@page import="Domain.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       int id=Integer.parseInt(request.getParameter("sid").toString());
       out.println(id);
       Student st=new StudentDao().findbyId(id);
       String msg=new StudentDao().delete(st);
       session.setAttribute("messsage", msg);
       response.sendRedirect("DeleteStudentForm.jsp");
       %>
    </body>
</html>