<!-- The index -->


<html>

	<head><title>  </title></head>
	
	<body>
	
		<br><br><br> *** Welcome! *** <br><br><br>
	
		<form action="student.php">
			<fieldset><legend> Please Log In </legend>
				<br>Username:
				<input type="text" name="UserName" size="50"><br>
				<br> Password:
				<input type="text" name="Password" size="50"><br><br>
			
				<input type="submit" value="Log In">

				<br><br><a href="guest.php">Continue as a guest</a><br><br>
				
			</fieldset>
		</form> 
		
		<!-- Need to be discussed -->
		<br><br><a href="faculty.php"> faculty</a>
		<br><a href="employee.php">employee</a><br><br>


	</body>

</html>


<?php

/* if the username belongs to a student direct to the students' page */
/* if the username belongs to a faculty direct to the faculties' page*/
/* if the username belongs to a employee direct to the employees' page*/

?>