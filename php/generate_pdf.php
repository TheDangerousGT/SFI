<?php
require('fpdf/fpdf.php');

// Configuración de la base de datos
$host = 'localhost';
$db = 'muniriob_';
$user = 'muniriob_devnorm';
$pass = 'bnOH3htR6jpP';

// Conexión a la base de datos
$conn = new mysqli($host, $user, $pass, $db);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
} else {
    echo "Conexión a la base de datos exitosa.<br>";
}

// Recibir datos del formulario
$unidad_admin = $_POST['Unidad_Admin'] ?? '';
$dependencia = $_POST['No_Dependencia'] ?? '';

// Verifica que los datos recibidos no estén vacíos
if (empty($unidad_admin) || empty($dependencia)) {
    die('No se recibieron datos válidos para generar el PDF.');
}

// Depuración de datos recibidos desde el formulario
echo "Unidad Admin: " . $unidad_admin . "<br>";
echo "Dependencia: " . $dependencia . "<br>";

// Consulta SQL para obtener los datos
$sql = "SELECT fecha, descripcion, nomenclatura, precio, cuenta_mayor, subcuenta 
        FROM ingreso_prod 
        WHERE unidad_admin = ? AND dependencia = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ss", $unidad_admin, $dependencia);
$stmt->execute();
$result = $stmt->get_result();

$data = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
}

// Depuración de datos extraídos de la base de datos
echo "<pre>";
print_r($data);
echo "</pre>";

$conn->close();

// Verifica si se obtuvieron datos
if (empty($data)) {
    die('No hay datos para mostrar en el PDF.');
}

// Clase PDF extendida
class PDF extends FPDF {
    function Header() {
        $this->SetFont('Helvetica', 'B', 12);
        $this->Cell(0, 10, 'Municipalidad de Rio Bravo', 0, 1, 'C');
        $this->Cell(0, 10, 'Tarjeta de Responsabilidad de Bienes', 0, 1, 'C');
        $this->Ln(10);
    }

    function Footer() {
        $this->SetY(-15);
        $this->SetFont('Helvetica', 'I', 8);
        $this->Cell(0, 10, 'Página ' . $this->PageNo(), 0, 0, 'C');
    }

    function CreateTable($data) {
        $this->SetFont('Arial', 'B', 10);
        $this->Cell(40, 10, 'Fecha', 1);
        $this->Cell(80, 10, 'Descripción', 1);
        $this->Cell(40, 10, 'Nomenclatura', 1);
        $this->Cell(30, 10, 'Debe', 1);
        $this->Cell(30, 10, 'Haber', 1);
        $this->Cell(30, 10, 'Saldo', 1);
        $this->Ln();

        $this->SetFont('Arial', '', 10);

        foreach($data as $row) {
            $this->Cell(40, 10, $row['fecha'], 1);
            $this->Cell(80, 10, $row['descripcion'], 1);
            $this->Cell(40, 10, $row['nomenclatura'], 1);
            $this->Cell(30, 10, number_format($row['precio'], 2, '.', ','), 1);
            $this->Cell(30, 10, '0.00', 1); // Asumimos que "Haber" es 0.00, puedes cambiar esto si es diferente
            $this->Cell(30, 10, number_format($row['precio'], 2, '.', ','), 1);
            $this->Ln();
        }
    }
}

// Crear el PDF
$pdf = new PDF('L', 'mm', 'A4');
$pdf->AddPage();

// Crear la tabla con los datos
$pdf->CreateTable($data);

// Salida del PDF
$pdf->Output('I', 'Tarjeta_Responsabilidad.pdf');
exit(); // Finaliza el script después de generar el PDF
?>
