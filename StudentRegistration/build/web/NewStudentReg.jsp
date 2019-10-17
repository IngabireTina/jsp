<%-- 
    Document   : NewStudentReg
    Created on : Oct 5, 2019, 5:59:33 PM
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
        
        Student st=new Student();
        st.setSid(Integer.parseInt(request.getParameter("sid").toString()));
        st.setFname(request.getParameter("fname"));
        st.setSem(Integer.parseInt(request.getParameter("sem").toString()));
        String msg=new StudentDao().create(st);
        session.setAttribute("message", msg);
        response.sendRedirect("NewStudentForm.jsp");
        %>
    </body>
</html>
