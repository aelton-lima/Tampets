<?php

include 'api/sessao.php';
validar_sessao();

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PAINEL ADM</title>
    <link rel="stylesheet" href="css/pagina.css">
    <link rel="stylesheet" href="css/cabecalho.css">
    <link rel="stylesheet" href="css/footer.css">
    <!-- Adicionando Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
</head>

<body>
  <?php 
    include 'assets/complementos/cabecalho.php';
  ?>

    <?php   
        // Verifica se o usuário é admin ou visitante
        if ($_SESSION['user']['nivel'] == 1) {
            echo "Bem-vindo Adm";
        } else {
            echo "Olá visitante";
        }
    ?>

    <?php include 'assets/complementos/rodape.php'; ?>
</body>
</html>