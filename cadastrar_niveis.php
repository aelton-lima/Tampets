<?php
include("api/conexao.php");

if($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = $_POST['nome'];
        $sql = "INSERT INTO niveis (nome) VALUES ('$nome')";
    
    if ($conn->query($sql) === TRUE) {
        echo "Cadastrado com Sucesso!!";
    } else {
        echo "Erro ao Cadastrar: " .$conn->error;
    }

    //fecha a comunicação
    $conn->close();
}
?>

<!-- Formularios HTML -->

<form method="POST" action="cadastrar_niveis.php">
    <label>Nome:</label>
    <input type="text" name="nome" required>
    <input type="submit" value="Cadastrar">
</form>