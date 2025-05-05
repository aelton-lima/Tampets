<?php

include 'api/sessao.php';
validar_sessao();

    include 'assets/complementos/cabecalho.php';
  
        // Verifica se o usuário é admin ou visitante
        if ($_SESSION['user']['nivel'] == 1) {
            echo "Bem-vindo Adm";
            echo '<li><a href="/tampets/cadastrar_cidades"> Cadastrar Cidades</a></li>';
            echo '<li><a href="/tampets/cadastrar_coletas"> Cadastrar Coletas</a></li>';
            echo '<li><a href="/tampets/cadastrar_locais"> Cadastrar Locais</a></li>';
            echo '<li><a href="/tampets/cadastrar_niveis"> Cadastrar Niveis</a></li>';
            echo '<li><a href="/tampets/cadastrar_users"> Cadastrar Users</a></li>';
        } else {
            echo "Olá visitante";
        }
include 'assets/complementos/rodape.php'; 
?>

