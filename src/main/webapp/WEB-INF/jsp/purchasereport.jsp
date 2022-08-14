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
   <h1>Search Result</h1>
   <table
    class="table table-striped table-hover table-condensed table-bordered">
    <tr>
     <th>Order Id</th>
     <th>Product Id</th>
     <th>Size</th>
     <th>Purchaser Name</th>
     <th>Phone No.</th>
     <th>Address</th>
     <th>Date Of Purchase</th>
     <th>Category</th>
    </tr>
    <c:forEach var="order" items="${orders}">
     <tr>
      <td>${order.orderid}</td>
      <td>${order.pid}</td>
      <td>${order.size}</td>
      <td>${order.cname}</td>
      <td>${order.cphone}</td>
      <td>${order.address}</td>
      <td>${order.dop}</td>
      <td>${order.category}</td>
     </tr>
    </c:forEach>
   </table>
  </div>

 </div>
 <a href="filter">Purchase Report Filter</a>
  <script type="text/javascript"
  src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>