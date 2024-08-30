<?php
session_start();

if (!isset($_SESSION['username'])) {
    header("Location: index.html"); // Redirige a la página de inicio de sesión
    exit();
}
?>