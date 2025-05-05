<?php
// Esta é a rotina para se efetuar a conexao com o DB

// Dados para efetuar a conexão
$serverName = "localhost";
$userName = "root";
$password = "";
$dabatase = "bd_tampets";

// Criar a conexão
$conn = new mysqli($serverName, $userName, $password, $dabatase);

// Verificar a conexão
if($conn->connect_error) {
    die("Conexão Falhou: " .$conn->connect_error);
}

// echo "Conectado com sucesso.";

?>