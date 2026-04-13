<?php
session_start();
if (isset($_GET['id'])) {
    $product_id = $_GET['id'];
    
    if (!isset($_SESSION['carts'])) {
        $_SESSION['carts'] = [];
    }
    
    $_SESSION['carts'][] = $product_id;
    
    header('Location: product.php?status=added');
    exit();
}
?>
