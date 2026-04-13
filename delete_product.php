<?php
require_once('db.php'); 

if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $id = $_GET['id'];
    $stmt = $conn->prepare("DELETE FROM products WHERE id = ?");
    $stmt->bind_param("s", $id);

    if ($stmt->execute()) {
        header("Location: product.php?message=deleted");
    } else {
        echo "Error deleting record: " . $conn->error;
    }

    $stmt->close();
    $conn->close();
} else {
    header("Location: product.php");
}
?>