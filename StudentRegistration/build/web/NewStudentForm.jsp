<%-- 
    Document   : NewStudentForm
    Created on : Oct 5, 2019, 5:58:59 PM
    Author     : ingabire
--%>
<%@page import="Dao.StudentDao"%>
<%@page import="java.util.List"%>
<%@page import="Domain.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>STUDENT REGISTRATION</h2>
        <%
            if(session.getAttribute("message")!=null){
            out.println(session.getAttribute("message").toString());
            session.removeAttribute("message");
            }
        
        %>
        <form action="NewStudentReg.jsp" method="POST">
         
             <input type="number" name="sid" placeholder="sid"></br>
               <input type="text" name="fname" placeholder="fname"></br>
               <input type="text" name="sem" placeholder="sem"></br>
              
               <button>Register</button>
            
        </form>
    </body>
</html>
