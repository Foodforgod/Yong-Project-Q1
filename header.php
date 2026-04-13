<?php include('db.php');?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
	<nav class="navbar">
		<div class="logo">
			<img src="4441.jpg" alt="Logo">
		</div>
		<ul class="nav-links">
			<li><a href="main.php">Home</a></li>
			<li><a href="product.php">Product</a></li>
			<li><a href="cart.php">Cart</a></li>
			<li><a href="CheckoutList.php">Checkout list</a>
				<?php if (isset($_SESSION["username"])!="") {?>
					<a href="#"><?=$_SESSION['username']?> </a>
					<div class="submenu">
						<ul class="dropdown">
							<li><a href="profile.php">Profile</a></li>
							<li><a href="logout.php">Logout</a></li>
						</ul>
					</div>
                <?php }else{?>
                	<a href="index.php">Login</a>
                	<a href="register.php">Register</a>
                <?php } ?>	
			</li>	
		</ul>
	</nav>