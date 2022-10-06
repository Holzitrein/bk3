<?php
    $ord = $_GET['ord'];
    $name= $_GET['name'];
    $mysqli = new mysqli("mysql", "user", "sayhi", "appDB2");
    $result = $mysqli->query("INSERT INTO orders VALUE (NULL, '$name', '$ord')");
    header("Location: http://localhost:8080/index.php");
    exit();
?>