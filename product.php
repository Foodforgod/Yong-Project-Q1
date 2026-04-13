;<?php 
include('header.php'); 

$qry=$conn->prepare("SELECT * FROM products");
$qry->execute();
$result=$qry->get_result();

if ($_SERVER["REQUEST_METHOD"]=="POST"&& isset($_POST['add_to_cart'])) {
    $productId = (int)$_POST['product_id'];
    if ($productId > 0){
        if (isset($_SESSION['carts'][$productId])) {
           $_SESSION['carts'][$productId] += 1;
      }else{
           $_SESSION['carts'][$productId] = 1;   
      }          

      $json=json_encode($_SESSION['carts']);
      file_put_contents('carts.john', $json);



      echo "<script>alert('Product added to cart');
      window.location.href='product.php';
      </script>";
    }else{
      echo "<script>alert('Invalid product ID');
      window.location.href='product.php';
      </script>";  
    }
}

?>

<div class="product-container">
    <div class="header">
        <div class="title">Product List</div>
        <button onclick="window.location.href='add_product.php'" class="btn-add">Add Product</button>
        <a href="cart.php" class="btn-add">View Cart</a>
    </div>

    <div class="product-card">
        <div class="search-box">
            <input type="text" class="form-control" placeholder="Search product...">
        </div>
    </div>

    <table>
        <thead>
            <tr>
            <th>SKU</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Date Created</th>
            <th>Action</th>
            <th>Add Cart</th>
            </tr>
        </thead>
        <tbody>
            <?php while($row=$result->fetch_assoc()){ ?>
                <tr>
                    <td><?=$row['SKU']?></td>
                    <td><?=$row['price']?></td>
                    <td><?=$row['quantity']?></td>
                    <td><?=$row['date_created']?></td>
                    <td>
                    <a href="edit_product.php?id=<?=$row['id']?>" class="btn btn-success">Edit</a> 
                    <a href="delete_product.php?id=<?=$row['id']?>" class="btn btn-danger" onclick="return confirm('Confirm delete?')">Delete</a>
                    </td>
                    <td>
                        <form action="" method="post">
                        <input type="hidden" name="product_id" value="<?=$row['id']?>">
                        <a href="cart.php?action=add&id=<?=$row['id']?>" class="btn btn-primary">Add to Cart</a>
                        </form>
                    </td>
                </tr>
            <?php } ?>
        </tbody>
    </table> 
</div>


<?php include('footer.php') ?>