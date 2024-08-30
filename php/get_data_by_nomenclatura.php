<?php
$servername = "localhost";
$username = "muniriob_devnorm";
$password = "bnOH3htR6jpP";
$dbname = "muniriob_";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Obtener la nomenclatura de la solicitud POST
$nomenclatura = $_POST['nomenclatura'];

// Consulta para obtener los datos por nomenclatura
$sql = "SELECT dependencia, unidad_admin, cuenta_mayor, subcuenta, precio, descripcion, fecha, foto, nomenclatura 
        FROM ingreso_prod 
        WHERE nomenclatura = '$nomenclatura'";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $data = array(
        'dependencia' => $row['dependencia'],
        'unidad_admin' => $row['unidad_admin'],
        'cuenta_mayor' => $row['cuenta_mayor'],
        'subcuenta' => $row['subcuenta'],
        'precio' => $row['precio'],
        'descripcion' => $row['descripcion'],
        'fecha' => $row['fecha'],
        'foto' => $row['foto'] ? 'uploads/' . $row['foto'] : '',
        'nomenclatura' => $row['nomenclatura']  // Añadido aquí
    );
    echo json_encode($data);
} else {
    echo json_encode(array('error' => 'No se encontraron datos para la nomenclatura proporcionada.'));
}


$conn->close();
?>
