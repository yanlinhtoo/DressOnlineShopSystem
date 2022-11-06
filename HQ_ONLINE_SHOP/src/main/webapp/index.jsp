<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Jean</title>
         <!-- CDN-->
         <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css">
         <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
         <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
         <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/dress.jpg" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link href="css/custom.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Responsive navbar-->
       <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
            <c:if test="${fn:contains(user.role,'admin')}">
                <a class="navbar-brand" href="#"><img id="logo" src="assets/HQ.jpg" alt="logo"/> Add List</a>
               </c:if>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        
                         <c:if test="${fn:contains(user.role,'admin') }">
                        <li class="nav-item"><a class="nav-link" href="gallery.jsp">Gallery</a></li>
                        </c:if>
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><c:out value="${user.username }"></c:out></a>
                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="dress?mode=LOGOUT">Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Page content-->
        <div class="container mt-5">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Code</th>
                            <th>Size</th>
                            <th>Color</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<c:forEach var="dress" items="${dressList}">
                    	<c:url var="updateLink" value="dress">
                    		<c:param name="mode" value="LOAD"></c:param>
                    		<c:param name="id" value="${dress.id}"></c:param>
                    	</c:url>
                    	<c:url var="deleteLink" value="dress">
                    		<c:param name="mode" value="DELETE"></c:param>
                    		<c:param name="id" value="${dress.id}"></c:param>
                    	</c:url>
                    	<tr>
                            <td><c:out value="${dress.id}"></c:out></td>
                            <td><c:out value="${dress.code}"></c:out></td>
                            <td><c:out value="${dress.size}"></c:out></td>
                            <td><c:out value="${dress.color}"></c:out></td>
                            <td><c:out value="${dress.price}"></c:out></td>
                            <c:if test="${fn:contains(user.role,'admin')}">
                 	        	<td><a href="${updateLink}" class="btn btn-primary">Edit</a></td>
								<td><a href="${deleteLink}" id="delete" class="btn btn-danger" onclick="return confirm('Are you sure to delete this result?;')">Delete</a></td>
                            </c:if>
                      </tr>
                    	</c:forEach>
                    </tbody>
                </table>
           
        </div>
        
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
	

    </body>
</html>
    