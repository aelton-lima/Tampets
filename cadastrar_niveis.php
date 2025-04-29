<?php
include("api/cadastro.php");
include 'api/sessao.php';

validar_adm();


if($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = $_POST['nome'];
    cadastrarNiveis($nome);
}
?>

<!-- Formularios HTML -->
<form method="POST" action="cadastrar_niveis.php">
    <label>Nome:</label>
    <input type="text" name="nome" required>
    <input type="submit" value="Cadastrar">
</form>