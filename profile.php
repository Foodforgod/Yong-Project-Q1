<?php 
include('header.php'); 
include('security.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST["name"];
    $phone = $_POST["phone"];
    $gender = $_POST["gender"];
    $email =$_POST["email"];
    $address =$_POST["address"];

    $qry=$conn->prepare("UPDATE user SET name=?,phone=?,gender=?,email=?,address=? WHERE username=?");
    $qry->bind_param("ssssss",$name,$phone,$gender,$email,$address,$_SESSION['username']);
    if($qry->execute()){
        echo "<script>alert('Profile updated succesfully');</script>";
    }else{
        echo "<script>alert('Failed to updated profile');</script>";
    }    
    }

    $qry=$conn->prepare("SELECT * FROM user WHERE username=?");
    $qry->bind_param("s",$_SESSION["username"]);
    $qry->execute();
    $result=$qry->get_result();
    $user=$result->fetch_assoc();

?>



<div class="container profile-page">
<div class="profile-card">
<h1>My profile</h1>

<form action="" method="post">

<div class="form-group">
<label>Username:</label>
<input type="text" class="form-control" 
value="<?= $_SESSION['username'] ?>" readonly>
</div>

<div class="form-group">
<label>Name:</label>
<input type="text" name="name" class="form-control"
value="<?= $user['name'] ?>">
</div>

<div class="form-group">
<label>Phone:</label>
<input type="text" name="phone" class="form-control"
value="<?= $user['phone'] ?>">
</div>

<div class="form-group">
<label>Gender:</label>
<select name="gender" class="form-control">
<option value="">Select Gender</option>
<option value="male" <?= $user['gender']=="male" ? "selected" : "" ?>>Male</option>
<option value="female" <?= $user['gender']=="female" ? "selected" : "" ?>>Female</option>
</select>
</div>

<div class="form-group">
<label>Email:</label>
<input type="email" name="email" class="form-control"
value="<?= $user['email'] ?>">
</div>

<div class="form-group">
<label>Address:</label>
<input type="text" name="address" class="form-control"
value="<?= $user['address'] ?>">
</div>

<button type="submit" class="btn btn-primary">Update Profile</button>

</form>
</div>
</div>
<?php include('footer.php'); ?>