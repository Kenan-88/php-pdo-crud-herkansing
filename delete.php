<?php

$id = $_GET["Id"];

$host = 'localhost';
$dbname = 'php-pdo-crud-herkansing';
$username = 'root';
$password = '';
try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $sql = "delete from Achtbaan where id = $id";
    $q = $pdo->query($sql);
    echo "deleted succesfully";
    header("refresh:2;url=read.php");
} catch (PDOException $e) {
    die("Could not connect to the database $dbname :" . $e->getMessage());
}
