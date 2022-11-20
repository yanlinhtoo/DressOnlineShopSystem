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
		<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
            <div class="container">
                <a class="navbar-brand" href="#"><img id="logo" src="assets/HQ.jpg" alt="logo"/> Add New Jean</a>
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
	    	<form action="dress" method="post" >
		        
		        <input type="hidden" name="mode" value="CREATE">
		        
		        <div class="mb-3">
		            <label for="code" class="col-sm-3 control-label">Enter Code</label>
		            <div class="col-sm-12">
		                <input type="text" id="code" name="code" placeholder="Code" class="form-control" autofocus="autofocus">
		            </div>
		        </div>
		        <div class="mb-3">
		            <label for="size" class="col-sm-3 control-label">Enter Size</label>
		            <div class="col-sm-12">
		                <input type="text" id="size" name="size" placeholder="Size" class="form-control" autofocus="autofocus">
		            </div>
		        </div>
		        <div class="mb-3">
		            <label for="color" class="col-sm-3 control-label">Enter Color</label>
		            <div class="col-sm-12">
		                <input type="text" id="color" name="color" placeholder="Color" class="form-control" autofocus="autofocus">
		            </div>
		        </div>
		        <div class="mb-3">
		            <label for="price" class="col-sm-3 control-label">Enter Price</label>
		            <div class="col-sm-12">
		                <input type="number" id="price" name="price" placeholder="Price" class="form-control">
		            </div>
		        </div>
		       
				<button type="submit" class="btn btn-primary btn-block">Register</button>
    		</form>
		</div> 



		 <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>

</body>
</html>