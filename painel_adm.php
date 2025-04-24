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
</head>
<body>
    <h1>PAINEL ADM</h1>

    <?php   
        // Verifica se o usuário é admin ou visitante
        if ($_SESSION['user']['nivel'] == 1) {
            echo "Bem-vindo Adm";
        } else {
            echo "Olá visitante";
        }
    ?>
</body>
</html>