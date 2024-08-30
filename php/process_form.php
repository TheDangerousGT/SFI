<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de Productos</title>
    <!-- Incluye SweetAlert2 desde CDN -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
    <img id="logo" src="../assets/muni.png" style="display:none;">
    <img id="qr" src="../assets/qr.png" style="display:none;">
</body>
</html>


<script>
        function imprimirEtiqueta(nomenclatura, municipalidad, departamento) {
            let logoSrc = document.getElementById('logo').src;
            let qrSrc = document.getElementById('qr').src;

            let contenido = `
                <div class="etiqueta">
                    <img src="${logoSrc}" alt="Logo" class="logo">
                    <div class="info">
                        <p class="muni">MUNICIPALIDAD DE RÍO BRAVO</p>
                        <p class="nomenclatura">${nomenclatura}</p>
                        <p>Inventario ${new Date().getFullYear()}</p>
                    </div>
                    <img src="${qrSrc}" alt="QR Code" class="qr-code">
                </div>
            `;

            let ventanaImpresion = window.open('', '', 'width=600,height=300');
            ventanaImpresion.document.write('<html><head><title>Imprimir Etiqueta</title>');
            ventanaImpresion.document.write('<style>');
            ventanaImpresion.document.write(`
                body { margin: 0; padding: 0; }
                .etiqueta {
                    width: 10cm; /* 100 mm = 10 cm */
                    height: 1.8cm; /* 18 mm = 1.8 cm */
                    border: 1px solid black;
                    display: flex;
                    align-items: center;
                    justify-content: space-between;
                    font-family: Arial, sans-serif;
                    font-size: 10px;
                    padding: 5px;
                    box-sizing: border-box; /* Incluye el padding en el tamaño total */
                }
                    .muni{
                        font-family: "Bebas Neue", sans-serif;
                        font-weight: 400;
                        font-style: normal;
        }
                .logo {
                    width: 1.2cm;
                    height: 1.5cm; /* Ajusta el alto del logo para que encaje mejor */
                    margin-right: 5px;
                }
                .info {
                    flex-grow: 1;
                    text-align: center;
                }
                .info p {
                    margin: 0;
                    line-height: 1.2;
                }
                .nomenclatura {
                    font-size: 20px;
                    font-weight: bold;
                    margin: 0.5cm 0; /* Espacio adicional alrededor del texto de nomenclatura */
                }
                .qr-code {
                    width: 1.6cm;
                    height: 1.6cm;
                    margin-left: 5px;
                }
            `);
            ventanaImpresion.document.write('</style></head><body>');
            ventanaImpresion.document.write(contenido);
            ventanaImpresion.document.write('</body></html>');
            ventanaImpresion.document.close();
            ventanaImpresion.focus();
            ventanaImpresion.print();
            ventanaImpresion.close();

            // Redireccionar a products.php después de la impresión
            window.location.href = '../products.php';
        }
    </script>
</body>
</html>

<?php
// Verifica si se ha enviado el formulario
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Establece la conexión a la base de datos (cambiar los datos según tu configuración)
    $servername = "localhost";
    $username = "muniriob_devnorm";
    $password = "bnOH3htR6jpP";
    $dbname = "muniriob_";

    // Crea la conexión
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Verifica la conexión
    if ($conn->connect_error) {
        die("Conexión fallida: " . $conn->connect_error);
    }

    // Verifica si los campos obligatorios están presentes y no están vacíos
    if (isset($_POST['No_Dependencia'], $_POST['cta_mayor'], $_POST['Unidad_Admin'], $_POST['no_subcuenta'], $_POST['precio'], $_POST['descripcion'], $_POST['fecha'])) {
        // Prepara las variables del formulario para evitar inyección SQL
        $dependencia_id = mysqli_real_escape_string($conn, $_POST['No_Dependencia']);
        $cuentaMayor_id = mysqli_real_escape_string($conn, $_POST['cta_mayor']);
        $unidadAdmin_id = mysqli_real_escape_string($conn, $_POST['Unidad_Admin']);
        $subcuenta_id = mysqli_real_escape_string($conn, $_POST['no_subcuenta']);
        $precio = mysqli_real_escape_string($conn, $_POST['precio']);
        $descripcion = mysqli_real_escape_string($conn, $_POST['descripcion']);
        $fecha = mysqli_real_escape_string($conn, $_POST['fecha']);

        // Obtener los correlativos de la dependencia, unidad administrativa, cuenta mayor y subcuenta
        $query_dependencia = "SELECT nombre, correlativo FROM dependencias WHERE id = '$dependencia_id'";
        $result_dependencia = mysqli_query($conn, $query_dependencia);
        $row_dependencia = mysqli_fetch_assoc($result_dependencia);
        $dependencia = $row_dependencia['correlativo'];
        $dependencia_nombre = $row_dependencia['nombre'];

        $query_unidad = "SELECT nombre, correlativo FROM unidades_administrativas WHERE id = '$unidadAdmin_id'";
        $result_unidad = mysqli_query($conn, $query_unidad);
        $row_unidad = mysqli_fetch_assoc($result_unidad);
        $unidad_administrativa = $row_unidad['correlativo'];
        $unidadAdmin_nombre = $row_unidad['nombre'];

        $query_cuenta_mayor = "SELECT nombre, correlativo FROM cuentas_mayores WHERE id = '$cuentaMayor_id'";
        $result_cuenta_mayor = mysqli_query($conn, $query_cuenta_mayor);
        $row_cuenta_mayor = mysqli_fetch_assoc($result_cuenta_mayor);
        $cuenta_mayor = $row_cuenta_mayor['correlativo'];
        $cuenta_nombre = $row_cuenta_mayor['nombre'];

        $query_subcuenta = "SELECT nombre, correlativo FROM subcuentas WHERE id = '$subcuenta_id'";
        $result_subcuenta = mysqli_query($conn, $query_subcuenta);
        $row_subcuenta = mysqli_fetch_assoc($result_subcuenta);
        $subcuenta = $row_subcuenta['correlativo'];
        $subcuenta_nombre = $row_subcuenta['nombre'];

        // Procesa la imagen subida si existe
        $relative_target_file = ""; // Variable para almacenar la ruta relativa
        if (isset($_FILES['foto'])) {
            $target_dir = "../uploads/"; // Directorio donde se guardarán las imágenes
            $target_file = $target_dir . basename($_FILES["foto"]["name"]);
            $uploadOk = 1;
            $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

            // Verifica si el archivo de imagen es una imagen real o una imagen falsa
            $check = getimagesize($_FILES["foto"]["tmp_name"]);
            if ($check !== false) {
                $uploadOk = 1;
            } else {
                die("Archivo no es una imagen.");
            }

            // Verifica si el archivo ya existe
            if (file_exists($target_file)) {
                die("Lo siento, el archivo ya existe.");
            }

            // Crea el directorio si no existe
            if (!file_exists($target_dir)) {
                mkdir($target_dir, 0777, true);
            }

            // Sube el archivo si todo está bien
            if ($uploadOk == 1) {
                if (move_uploaded_file($_FILES["foto"]["tmp_name"], $target_file)) {
                    // Almacenar la ruta relativa de la imagen en la base de datos
                    $relative_target_file = "uploads/" . basename($_FILES["foto"]["name"]);
                } else {
                }
            }
        }

        // Obtener el último número secuencial para la combinación actual de cuenta mayor y subcuenta
        $sql = "SELECT MAX(CAST(SUBSTRING_INDEX(nomenclatura, '-', -1) AS UNSIGNED)) AS max_seq 
                FROM ingreso_prod 
                WHERE cuenta_mayor='$cuenta_nombre' AND subcuenta='$subcuenta_nombre'";

        $result = $conn->query($sql);
        $row = $result->fetch_assoc();
        $lastSeq = $row['max_seq'] ? (int)$row['max_seq'] : 0;

        // Generar el nuevo número secuencial
        $newSeq = str_pad($lastSeq + 1, 3, '0', STR_PAD_LEFT);

        // Crear la nomenclatura utilizando los correlativos
        $nomenclatura = "$dependencia-$unidad_administrativa-$cuenta_mayor-$subcuenta-$newSeq";

        // Inserta los datos en la base de datos junto con la nomenclatura
        $sql = "INSERT INTO ingreso_prod (dependencia, unidad_admin, cuenta_mayor, subcuenta, precio, descripcion, foto, fecha, nomenclatura)
                VALUES ('$dependencia_nombre', '$unidadAdmin_nombre', '$cuenta_nombre', '$subcuenta_nombre', '$precio', '$descripcion', '$target_file', '$fecha', '$nomenclatura')";

        if ($conn->query($sql) === TRUE) {
            echo "<script>
                    Swal.fire({
                      title: 'Formulario Enviado',
                      input: 'text',
                      inputLabel: 'Nomenclatura creada',
                      inputValue: '$nomenclatura',
                      inputAttributes: {
                        'disabled': true
                      },
                      showCancelButton: true,
                      confirmButtonText: 'Imprimir',
                      cancelButtonText: 'Cancelar'
                    }).then((result) => {
                      if (result.isConfirmed) {
                        imprimirEtiqueta('$nomenclatura', '$dependencia_nombre', '$unidadAdmin_nombre');
                      } else {
                        window.location.href = '../products.php';
                      }
                    });
                  </script>";
        } else {
            echo "<script>
                    Swal.fire({
                      icon: 'error',
                      title: 'Oops...',
                      text: 'Something went wrong!',
                      footer: '<p>If the problem persists, contact the Municipality</p>'
                    }).then(() => {
                      window.location.href = '../products.php';
                    });
                  </script>";
        }
    } else {
        echo "Todos los campos del formulario son obligatorios.";
    }

    // Cierra la conexión a la base de datos
    $conn->close();
} else {
    echo "El formulario no ha sido enviado correctamente.";
}
?>