<%-- 
    Document   : update
    Created on : Nov 12, 2021, 1:32:44 PM
    Author     : USER
--%>

<%@page import="java.util.List"%>
<%@page import="database.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Information</title>
    </head>
    <body>
        <h1>Update Information</h1>
        List Student
        <br/>
        <%
            List<Student> StudentList = StudentTable.findAllStudent();
            if (StudentList.size() > 0) {
                for (Student stud : StudentList) {
                    out.print(stud.getId() + " ");
                    out.print(stud.getName() + " ");
                    out.print(stud.getGpa() + " ");
                    out.print("<br/>");
                }
            } else {
                out.println("No Information");
            }
        %>
        <br/>
        Enter update student <br/>
        <form name="main" action="update" method="POST">            
            ID: <input type="text" name="id" value="" /> <br/>
            Name: <input type="text" name="name" value="" size="20" /> <br/>
            GPA: <input type="text" name="gpa" value="" /> <br/>
            <input type="submit" value="Submit" name="btn" />
        </form>
    </body>
</html>

