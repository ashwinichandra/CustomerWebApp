<%-- 
    Document   : studentinfo
    Created on : Feb 15, 2016, 9:24:03 PM
    Author     : ashwiniramachandra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Information</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        
    </head>
    
    <body>
        
    <div class="container">
    <div class="jumbotron">
    <h1>Customer Information</h1>
    <p>This application lets you to add, delete, search and edit customer details</p>
    </div>
  

       <!-- Table for adding customer details -->         
        <form action="./StudentServlet" method="POST">
        <table class="table">
          
            <tr>
                <td>Customer ID</td>
                <td><input type="text" name="studentId" value="${student.studentId}"/></td>
            </tr> 
            <tr>
                <td>First Name</td>
                <td><input type="text" name="firstname" value="${student.firstname}"/></td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td><input type="text" name="lastname" value="${student.lastname}"/></td>
            </tr>
            <tr>
                <td>Year Level</td>
                <td><input type="text" name="yearLevel" value="${student.yearLevel}"/></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" class="btn btn-primary" name="action" value="Add"/>
                    <input type="submit" class="btn btn-primary" name="action" value="Edit"/>
                    <input type="submit" class="btn btn-danger" name="action" value="Delete"/>
                    <input type="submit" class="btn btn-primary" name="action" value="Search"/>
                    <!--<input type="reset" name="action" value="Clear"/>-->
                </td>
            </tr>    
        </table>
       </form>
        <br>
        
        
          <!-- Table for displaying customer details -->  
          
          <h2>Customer details:</h2>
        <table class="table table-condensed">
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Year Level</th>
            <c:forEach items="${allStudents}" var="stud">
                <tr>
                    <td>${stud.studentId}</td>
                    <td>${stud.firstname}</td>
                    <td>${stud.lastname}</td>
                    <td>${stud.yearLevel}</td>
                </tr> 
            </c:forEach>     
        </table>
       </div>    
       </body>
</html>
