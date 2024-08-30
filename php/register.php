<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <!-- Incluye SweetAlert2 desde CDN -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
    <!-- Tu contenido aquí -->
</body>
</html>
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

// Recibir datos del formulario
$cui = $_POST['cui'];
$name = $_POST['name'];
$lastName = $_POST['lastName'];
$phone = $_POST['phone'];
$email = $_POST['email'];
$address = $_POST['address'];
$username = $_POST['username'];
$password = $_POST['password'];
$avatar = $_POST['avatar'];

// Consulta para insertar los datos
$sql = "INSERT INTO administrators (cui, name, lastName, phone, email, address, username, password, avatar) VALUES ('$cui', '$name', '$lastName', '$phone', '$email', '$address', '$username', '$password', '$avatar')";

if ($conn->query($sql) === TRUE) {
    echo "<script>
                    Swal.fire({
                      position: 'top-end',
                      icon: 'success',
                      title: 'Tu registro ha sido guardado',
                      showConfirmButton: false,
                      timer: 1500
                    }).then(() => {
                      window.location.href = '../admin.php';
                    });
                  </script>";
} else {
    echo "<script>
                    Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Ocurrió un error campos vacíos o DPI no válido',
                    'footer: '<p>Si el problema persiste contacta a la Municipalidad</a>'
                    });.then(() => {
                      window.location.href = '../admin.php';
                    });
                  </script>";
}

$conn->close();
?>
