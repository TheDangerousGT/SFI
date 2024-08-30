<?php
$servername = "localhost";
$username = "muniriob_devnorm";
$password = "bnOH3htR6jpP";
$dbname = "muniriob_";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

$cuentaMayorId = $_GET['cuenta_mayor_id'];
$sql = "SELECT id, nombre FROM subcuentas WHERE cuenta_mayor_id = '$cuentaMayorId' ORDER BY nombre ASC";
$result = $conn->query($sql);

$subcuentas = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $subcuentas[] = $row;
    }
}

echo json_encode($subcuentas);

$conn->close();
?>
