<%-- 
    Document   : Display
    Created on : Oct 12, 2019, 4:12:39 PM
    Author     : ingabire
--%>

<%@page import="java.util.List"%>
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
        <h1>All Student</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Student ID</th>
                    <th>FirstName</th>
                    <th>Semester</th>
                </tr>
            </thead>
            <tbody>
                <%
                 
                   StudentDao dao=new StudentDao();
                   List<Student>li=dao.findAll();
                   for(Student st:li){
                out.println("<tr>");
                out.println("<td>"+st.getSid()+"</td>");
                out.println("<td>"+st.getFname()+"</td>");
                out.println("<td>"+st.getSem()+"</td>");
                %>
            <td><a href="DeleteStudentReg.jsp?sid=<%=st.getSid()%>">Delete</a></td>
            <td><a href="UpdateStudentForm.jsp?sid=<%=st.getSid()%>">Update</a></td>    
            <%
                
                out.println("</tr>");
                       
                   }
               
                
                %>
            </tbody>
        </table>

    </body>
</html>
