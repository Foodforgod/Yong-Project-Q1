<?php 
include('header.php'); 
include('db.php');
if(isset($_GET['id'])){
    $id = $_GET['id'];
    $stmt = $conn->prepare("SELECT * FROM products WHERE id = ?");
    $stmt->bind_param("s", $id);
    $stmt->execute();
    $product = $stmt->get_result()->fetch_assoc();
    $stmt->close();

    if(!$product){
        echo "Product not found.";
        include('footer.php');
        exit;
    }
} else {
    echo "No ID provided.";
    include('footer.php');
    exit;
}


if(isset($_POST['update_product'])){
    $id = $_POST['id'];
    $sku = $_POST['SKU'];
    $price = $_POST['price'];
    $quantity = $_POST['quantity'];

       $qry=$conn->prepare("UPDATE products SET sku=?, price=?, quantity=? WHERE id=?");
    $qry->bind_param("sdii",$sku,$price,$quantity,$id);
    if($qry->execute()){
        echo "<script>alert('Product updated successfully');
        window.location.href='product.php';
        </script>";
    } else {
        echo "<script>alert('Failed to update product');
        window.location.href='edit_product.php?id=$id';
        </script>";
    }
}
?>


<div class="container product-page">
<button onclick="window.location.href='product.php'" class="btn-add">Back to List</button>
    <div class="product-card">
    <div class="header">
        <h1>Edit Product</h1>
    
        

    </div>

    <form action="edit_product.php?id=<?=$product['id']?>" method="POST" class="product-form">
        <input type="hidden" name="id" value="<?=$product['id']?>">
        
        <div class="form-group">
            <label>SKU:</label>
            <input type="text" name="SKU" value="<?=$product['SKU']?>" required class="form-control">
        </div>
        
        <div class="form-group">
            <label>Price:</label>
            <input type="number" step="0.01" name="price" value="<?=$product['price']?>" required class="form-control">
        </div>
        
        <div class="form-group">
            <label>Quantity:</label>
            <input type="number" name="quantity" value="<?=$product['quantity']?>" required class="form-control">
        </div>
        <div class="card button">
        <button type="submit" name="update_product" class="btn-submit">Update Product</button>
    </div>
    </form>
</div>
</div>

<?php include('footer.php') ?>
