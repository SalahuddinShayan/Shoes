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
     <th>User Id</th>
     <th>User Name</th>
     <th>Mobile No</th>
     <th>Email Id</th>
    </tr>
    <c:forEach var="u" items="${users}">
     <tr>
      <td>${u.userid}</td>
      <td>${u.username}</td>
      <td>${u.userphone}</td>
      <td>${u.useremail}</td>
     </tr>
    </c:forEach>
   </table>
  </div>

 </div>
  <script type="text/javascript"
  src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>