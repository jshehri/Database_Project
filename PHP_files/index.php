<!-- The index -->

<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<html>
	
	<body>
	
		<ul>
			<li><a class="active"  href="index.php"> Index </a></li>
			<li><a  href="faculty.php"> Faculty </a></li>
			<li><a href="employee.php"> Employee </a></li>
		</ul> 
	
		
			<h1>*** Welcome! ***</h1>
			<div>
				<form action="student.php">
					<fieldset><legend><h2> Please Log In </h2></legend>
					<br></br>
						<label for = "uname"><b> Username </b></label>
							<input type="text" id= "uname" name="username">
						<label for = "pass"><b> Password </b></label>
							<input type="text" id= "pass" name="password">
						<input type="submit" value="Log In">
					</fieldset>
				</form> 
				
				<a class="singlelink" href="guest.php">Continue as a guest</a>
			</div>
		
	</body>
	

</html>


<?php

/* if the username belongs to a student direct to the students' page */
/* if the username belongs to a faculty direct to the faculties' page*/
/* if the username belongs to a employee direct to the employees' page*/

?>