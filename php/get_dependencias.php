<?php
$servername = "localhost";
$username = "muniriob_devnorm";
$password = "bnOH3htR6jpP";
$dbname = "muniriob_";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

$sql = "SELECT id, nombre FROM dependencias";
$result = $conn->query($sql);

$dependencias = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $dependencias[] = $row;
    }
}

echo json_encode($dependencias);

$conn->close();
?>
