<?php
$serverName = "";
$userName = "";
$password = "";
$dabatase = "";

$conn = new mysqli($serverName, $userName, $password, $dabatase);
if($conn->connect_error) {
    die("Conexão Falhou: " .$conn->connect_error);
}
// echo "Conectado com sucesso.";
?>