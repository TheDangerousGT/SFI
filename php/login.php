<?php
session_start();

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

// Recibir datos del formulario
$user = mysqli_real_escape_string($conn, $_POST['username']);
$pass = mysqli_real_escape_string($conn, $_POST['password']);

// Consulta para verificar las credenciales
$sql = "SELECT * FROM administrators WHERE username = '$user' AND password = '$pass'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Obtener los datos del administrador
    $row = $result->fetch_assoc();
    $fullName = $row['name'] . ' ' . $row['lastName'];

    // Guardar información del usuario en la sesión
    $_SESSION['username'] = $user;
    $_SESSION['fullName'] = $fullName; // Guardar el nombre completo en la sesión
    $_SESSION['avatar'] = 'assets/img/avatar-male.png';
    header("Location: ../home.php");
    exit();
} else {
    $error_message = urlencode('Nombre de usuario o contraseña incorrectos!');
    header("Location: ../index.html?error=$error_message");
    exit();
}

$conn->close();
?>