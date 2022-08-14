<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>

<link rel="stylesheet" type="text/css"
 href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />

</head>
<body>
 <div class="container">
  <div class="starter-template">
   <h1>Product List</h1>
   <table
    class="table table-striped table-hover table-condensed table-bordered">
    <tr>
     <th>Id</th>
     <th>Color</th>
     <th>Gender</th>
     <th>Category</th>
     <th>Price</th>
    </tr>
    <c:forEach var="shoe" items="${shoes}">
     <tr>
      <td>${shoe.id}</td>
      <td>${shoe.colour}</td>
      <td>${shoe.gender}</td>
      <td>${shoe.category}</td>
      <td>${shoe.price}</td>
     </tr>
    </c:forEach>
   </table>
  </div>

 </div>
 <h1>Place Order</h1>  
       <form:form method="post" action="saveorder">    
        <table >
         <tr>    
          <td>Product Id : </td>   
          <td><form:input path="pid"  /></td>  
         </tr> 
         <tr>    
          <td>size : </td>   
          <td><form:input path="size"  /></td>  
         </tr>     
         <tr>    
          <td>Name : </td>   
          <td><form:input path="cname"  /></td>  
         </tr>    
         <tr>    
          <td>Mobile No. :</td>    
          <td><form:input path="cphone" /></td>  
         </tr>   
         <tr>    
          <td>Address :</td>    
          <td><form:input path="address" /></td>  
         </tr>
         <tr>    
          <td>Date :</td>    
          <td><form:input path="dop"  value="${Date}" readonly="true"/></td>  
         </tr>
         <tr>    
          <td>Category :</td>    
          <td><form:input path="category" /></td>  
         </tr>     
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Add Product" /></td>    
         </tr>    
        </table>    
       </form:form> 

 <script type="text/javascript"
  src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>

</html>