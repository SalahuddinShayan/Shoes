<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
  <header>
   <h1>Spring MVC + JSP + JPA + Spring Boot 2</h1>
  </header>
  <div class="starter-template">
   <h1>Users List</h1>
   <table
    class="table table-striped table-hover table-condensed table-bordered">
    <tr>
     <th>Id</th>
     <th>Color</th>
     <th>Gender</th>
     <th>Category</th>
     <th>Price</th>
     <th>Delete</th>
    </tr>
    <c:forEach var="shoe" items="${shoes}">
     <tr>
      <td>${shoe.id}</td>
      <td>${shoe.colour}</td>
      <td>${shoe.gender}</td>
      <td>${shoe.category}</td>
      <td>${shoe.price}</td>
      <td><a href="deleteshoe/${shoe.id}">Delete</a></td>  
     </tr>
    </c:forEach>
   </table>
  </div>

 </div>
<a href="addshoe">Add\Update Products</a><br>
 <script type="text/javascript"
  src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>

</html>