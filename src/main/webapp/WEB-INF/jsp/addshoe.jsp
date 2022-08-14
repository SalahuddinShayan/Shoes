<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
</head>
<body>

<h1>Add New Product</h1>  
       <form:form method="post" action="saveshoe">    
        <table >
         <tr>    
          <td>Product Id : </td>   
          <td><form:input path="id"  /></td>  
         </tr> 
         <tr>    
          <td>Color : </td>   
          <td><form:input path="colour"  /></td>  
         </tr>     
         <tr>    
          <td>Gender : </td>   
          <td><form:input path="gender"  /></td>  
         </tr>    
         <tr>    
          <td>Category :</td>    
          <td><form:input path="category" /></td>  
         </tr>   
         <tr>    
          <td>Price :</td>    
          <td><form:input path="price" /></td>  
         </tr>   
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Add Product" /></td>    
         </tr>    
        </table>    
       </form:form> 

</body>
</html>