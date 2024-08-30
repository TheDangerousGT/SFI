<?php
session_start();

$servername = "localhost";
$username = "muniriob_devnorm";
$password = "bnOH3htR6jpP";
$dbname = "muniriob_";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

$dpi = mysqli_real_escape_string($conn, $_POST['dpi']);
$first_name = mysqli_real_escape_string($conn, $_POST['first_name']);
$last_name = mysqli_real_escape_string($conn, $_POST['last_name']);
$address = mysqli_real_escape_string($conn, $_POST['address']);
$phone = mysqli_real_escape_string($conn, $_POST['phone']);
$email = mysqli_real_escape_string($conn, $_POST['email']);
$dependency_name = mysqli_real_escape_string($conn, trim($_POST['dependencia']));
$unit = mysqli_real_escape_string($conn, $_POST['unidad_admin']);

// Obtener el ID de la dependencia basado en el nombre seleccionado
$sql_dependencia = "SELECT id FROM dependencias WHERE nombre = '$dependency_name'";
$result_dependencia = $conn->query($sql_dependencia);

if ($result_dependencia->num_rows > 0) {
    $row_dependencia = $result_dependencia->fetch_assoc();
    $dependency_id = $row_dependencia['id'];

    // Insertar el trabajador en la tabla con el ID de la dependencia
    $sql = "INSERT INTO trabajadores (dpi, nombres, apellidos, direccion, telefono, email, dependencia_id, unidad_administrativa) 
            VALUES ('$dpi', '$first_name', '$last_name', '$address', '$phone', '$email', '$dependency_name', '$unit')";

if ($result_dependencia === FALSE) {
    die("Error al ejecutar la consulta: " . $conn->error);
}

    if ($conn->query($sql) === TRUE) {
        echo "<script src='https://cdn.jsdelivr.net/npm/sweetalert2@11'></script>";
        echo "<script>
        Swal.fire({
          icon: 'success',
          title: 'Éxito',
          text: 'Trabajador registrado exitosamente!',
          timer: 1500,
          timerProgressBar: true
        }).then(() => {
          window.location.href = '../index.html';
        });
        </script>";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
} else {
    echo "Error: No se encontró la dependencia seleccionada.";
}

$conn->close();
?>
