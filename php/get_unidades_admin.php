<?php
$servername = "localhost";
$username = "muniriob_devnorm";
$password = "bnOH3htR6jpP";
$dbname = "muniriob_";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

$dependenciaId = $_GET['dependencia_id'];
$sql = "SELECT id, nombre FROM unidades_administrativas WHERE dependencia_id = '$dependenciaId'";
$result = $conn->query($sql);

$unidades = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $unidades[] = $row;
    }
}

echo json_encode($unidades);

$conn->close();
?>
