<?php
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
	$username = $_POST['username'];
	$password = $_POST['password'];
	$confirm_password = $_POST['confirm_password'];

	$qry=$conn->prepare("SELECT * FROM user WHERE username=?");
	$qry->bind_param("s",$username);
    $qry->execute();
    $result=$qry->get_result();
    if($result->num_rows>0){
     	 echo "Username already exists!";
     	 exit();
     	}

	if($password ===$confirm_password){
	   $hashed_password = password_hash($password,PASSWORD_DEFAULT);
	   $stmt = $conn->prepare("INSERT INTO user (username,password) VALUE (?,?)");
	   $stmt ->bind_param("ss",$username,$hashed_password);
	   $stmt ->execute();
	   $stmt ->close();
	   echo "Registration successful";
	} else {
	   echo "Password do not match!";
	}
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device=width,initial-scale=1.0">
	<title>Register</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
	<div class="container">
		<h1>Register</h1>
		<div class="card">
			<form action="register.php" method="POST">
				<div class="form-group">
					<label for="username">Username:</label>
					<input type="text" id="username" name="username">
				</div>
				<div class="form-group">
					<label for="password">Password:</label>
					<input type="password" id="password" name="password">
				</div>
				<div class="form-group">
					<label for="confirm password">Confirm Password:</label>
					<input type="confirm password" id="confirm_password" name="confirm_password">
				</div>
				<button type="submit">Register</button><br>
				<a href="index.php">Login page</a>

			</form>
		</div>
	</div>


</body>
</html>