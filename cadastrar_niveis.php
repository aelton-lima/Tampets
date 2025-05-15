<link rel="stylesheet" href="/css/cadastrar_niveis.css">

<?php
    include("api/cadastro.php");
    include ('api/sessao.php');
    include ('assets/complementos/cabecalho.php');
    validar_adm();


    if($_SERVER["REQUEST_METHOD"] == "POST") {
        $nome = $_POST['nome'];
        cadastrarNiveis($nome);
    }
?>

<main>
    <form method="POST" action="cadastrar_niveis.php">
        <label>Nome:</label>
        <input type="text" name="nome" required>
        <input type="submit" value="Cadastrar">
    </form>
</main>

<?php include 'assets/complementos/rodape.php'; ?>