<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Please, Give required Info</h1>  
       <form:form method="post" action="saveuser">    
        <table >
         
         <tr>    
          <td>Name : </td>   
          <td><form:input path="username"  /></td>  
         </tr>     
         <tr>    
          <td>Mobile No. : </td>   
          <td><form:input path="userphone"  /></td>  
         </tr>    
         <tr>    
          <td>Email Id:</td>    
          <td><form:input path="useremail" /></td>  
         </tr>     
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Sign Up" /></td>    
         </tr>    
        </table>    
       </form:form> 

</body>
</html>