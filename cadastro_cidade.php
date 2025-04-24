<?php

include 'api/sessao.php';
validar_sessao();

include("api/conexao.php");

if($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = $_POST['nome'];
    $sql = "INSERT INTO cidades (nome) VALUES ('$nome')";

    if($conn->query($sql) === TRUE) {
    echo "Cidade cadastrada com sucesso!";
    } else {
    echo "Erro ao cadastrar: " .$conn->error;
    }

    // Fecho comunicação
    $conn->close();
}

?>

<!-- Formulario HTML -->
<form method="POST"action="cadastro_cidade.php">
<label>Nome Cidade: </label>
<input type="text" name="nome" required>
<br><br>
<input type="submit" value="Cadastrar">
</form>