<%-- 
    Document   : delete
    Created on : Nov 12, 2021, 1:32:26 PM
    Author     : USER
--%>

<%@page import="java.util.List"%>
<%@page import="database.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Information</title>
    </head>
    <body>
        <h1>Delete Information</h1>
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
                out.println("No Data");
            }
        %>
        <br/>
        Enter id to delete <br/>
        <form name="main" action="delete" method="POST">
            ID: <input type="text" name="id" value="" /> <br/>
            <input type="submit" value="Submit" name="btn" />
        </form>
    </body>
</html>