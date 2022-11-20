<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!-- <!DOCTYPE html> -->
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Jean</title>
         <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css">
         <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
         <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
         <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>
        <link rel="icon" type="image/x-icon" href="assets/dress.jpg" />
        <link href="css/styles.css" rel="stylesheet" />
        <link href="css/custom.css" rel="stylesheet" />
    </head>
<body>
	   
			<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
            <div class="container">
                <a class="navbar-brand" href="#"><img id="logo" src="assets/HQ.jpg" alt="logo"/> Update Jean</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
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

 
		<div class="container mt-4">
	    	<form action="user" method="post">

		        <input type="hidden" name="mode" value="UPDATE">
		        <input type="hidden" name="id" value="${user.id}">
		        
		        <div class="mb-3">
		        	<c:out value="ID : ${user.id}"></c:out>
		        </div>
		        
		        
		   
		        <div class="mb-3">
		            <label for="size" class="col-sm-3 control-label">UserName</label>
		            <div class="col-sm-12">
		                <input type="text" id="username" name="username" value="${user.username}" class="form-control" ReadOnly="true">
		            </div>
		        </div>
		        
		        
		        <div class="mb-3">
		            <label for="color" class="col-sm-3 control-label">Email</label>
		            <div class="col-sm-12">
		                <input type="text" id="email" name="email" value="${user.email}" class="form-control" ReadOnly="true">
		            </div>
		        </div>
		        
		         <div class="mb-3">
		            <label for="size" class="col-sm-3 control-label">Password</label>
		            <div class="col-sm-12">
		                <input type="password" id="password" name="password" value="${user.password}" ReadOnly="true">
		            </div>
		        </div>
		        
		        <div class="mb-3">
		            <label for="price" class="col-sm-3 control-label">Role</label>
		            <div class="col-sm-12">
		                <input type="text" id="role" name="role" value="${user.role}" class="form-control">
		            </div>
		        </div>
		       
				<button type="submit" class="btn btn-primary btn-block">Update</button>
    		</form>
		</div> 



		 <!-- Bootstrap core JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/scripts.js"></script>

</body>
</html>