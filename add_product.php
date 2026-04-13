

<?php 
include('header.php');


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $SKU = $_POST["SKU"];
    $price = $_POST["price"];
    $quantity = $_POST["quantity"];

    try{
        $qry=$conn->prepare("INSERT INTO products(`SKU`,`price`,`quantity`) VALUES(?,?,?)");
        $qry->bind_param("sss",$SKU,$price,$quantity);
        if($qry->execute()){
            echo "<script>alert('submit successfully'); window.location.href='product.php';</script>";
        }else{
            echo "<script>alert('submit failed');</script>";

            $qry=$conn->prepare("SELECT * FROM product WHERE SKU=?");
            $qry->bind_param("s",$_SESSION['SKU']);
            $qry->execute();
            $result=$qry->get_result();
            $product=$result->fetch_assoc();


         }    
        } catch (Throwable $e){
              echo "Caught exception: " . $e->getMessage();

        }
    
 }
    

?>

<div class="container product-page">
    <div class="product-card">
        <h1>Product</h1>
        <form action="add_product.php" method="post">
        <div class="form-group">
        <label for="SKU">SKU:</label>
        <input type="text" id="SKU" name="SKU">
        </div>
        <div class="form-group">
        <label for="price">Price:</label>
        <input type="text" id="price" name="price">
        </div>
        <div class="form-group">
        <label for="quantity">Quantity:</label>
        <input type="text" id="quantity" name="quantity">
        </div>
        <button type="submit" class="btn btn-primary">sumbit</button>
        <br>
        <br>
        <button type="button" class="btn btn-secondary" 
        onclick="window.location.href='product.php'">Back to Product List</button>
        </form>
    </div>  
</div>


<?php include('footer.php');?>