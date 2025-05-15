<link rel="stylesheet" href="/css/cadastrar_cidades.css">

<?php
    include 'api/sessao.php';
    validar_adm();
    include ('assets/complementos/cabecalho.php');
    include("api/cadastro.php");

    if($_SERVER["REQUEST_METHOD"] == "POST") {
        $nome = $_POST['nome'];
        cadastrarCidade($nome);
    }
?>
<main>
    <form method="POST"action="cadastrar_cidades.php">
        <label>Nome Cidade: </label>
        <input type="text" name="nome" required>
        <br><br>
        <input type="submit" value="Cadastrar">
    </form>
</main>

<?php include 'assets/complementos/rodape.php'; ?>