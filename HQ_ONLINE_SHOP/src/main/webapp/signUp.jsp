<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	      
		<div class="container">
	    	<form action="user" method="post" >
		        <h2 class="mb-3 mt-4 text-center">Sign Up</h2>
		        <input type="hidden" name="mode" value="SIGNUP">
		        <div class="mb-3">
		            <label for="code" class="col-sm-3 control-label">Enter Username</label>
		            <div class="col-sm-12">
		                <input type="text" id="username" name="username" placeholder="Username" class="form-control" autofocus="autofocus">
		            </div>
		        </div>
		        <div class="mb-3">
		            <label for="size" class="col-sm-3 control-label">Enter E-mail</label>
		            <div class="col-sm-12">
		                <input type="email" id="email" name="email" placeholder="Emain" class="form-control" autofocus="autofocus">
		            </div>
		        </div>
		        <div class="mb-3">
		            <label for="color" class="col-sm-3 control-label">Enter Password</label>
		            <div class="col-sm-12">
		                <input type="text" id="password" name="password" placeholder="Password" class="form-control" autofocus="autofocus">
		            </div>
		        </div>
		        <div class="mb-3 form-check">
		                <input type="checkbox" class="form-check-input" id="role" name="role" value="true">
		          		<label for="role" class="form-check-label">Role</label>
		        </div>
		       
				<button type="submit" class="btn btn-primary">Submit</button>
    		</form>
    		<p>Already has an account? <a href="signin.jsp">Please Sign In</a> </p>
		</div> 



		 <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>

</body>
</html>