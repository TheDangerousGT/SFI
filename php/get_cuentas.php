<?php
$servername = "localhost";
$username = "muniriob_devnorm";
$password = "bnOH3htR6jpP";
$dbname = "muniriob_";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

$sql = "SELECT id, nombre FROM cuentas_mayores";
$result = $conn->query($sql);

$cuentasMayores = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $cuentasMayores[] = $row;
    }
}

echo json_encode($cuentasMayores);

$conn->close();
?>
