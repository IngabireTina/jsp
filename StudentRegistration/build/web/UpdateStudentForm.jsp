<%-- 
    Document   : UpdateStudentForm
    Created on : Oct 5, 2019, 6:02:25 PM
    Author     : ingabire
--%>

<%@page import="Domain.Student"%>
<%@page import="Dao.StudentDao"%>
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
        Student st=new StudentDao().findbyId(id);
       
            if(session.getAttribute("message")!=null){
            out.println(session.getAttribute("message").toString());
            session.removeAttribute("message");
            }
        %>
     
        <form action="updateStudentReg.jsp" method="POST">
            <input type="text" value="<%=st.getSid()%>" readonly name="sid" placeholder="sid"></br>
            <input type="text" value="<%=st.getFname()%>" name="fname" placeholder="fname"></br>
            <input type="text" value="<%=st.getSem()%>" name="sem" placeholder="sem"></br>
            <button>Update</button>
        </form>
    </body>
</html>
