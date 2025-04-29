<?php

include 'api/sessao.php';
validar_sessao();

    include 'assets/complementos/cabecalho.php';
  
        // Verifica se o usuário é admin ou visitante
        if ($_SESSION['user']['nivel'] == 1) {
            echo "Bem-vindo Adm";
        } else {
            echo "Olá visitante";
        }
include 'assets/complementos/rodape.php'; 
?>
