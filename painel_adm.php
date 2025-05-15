<link rel="stylesheet" href="/css/painel_adm.css">

<?php
    include_once('api/sessao.php');
    include_once('assets/complementos/cabecalho.php');
    validar_sessao();
?>

<main>
    <div class="dashboard">
        <div class="button-container">
            <?php
                // Verifica se o usuário é admin ou visitante
                if ($_SESSION['user']['nivel'] == 1) {
                    echo "<h2>Bem-vindo Adm</h2>";
                    echo '<a class="admin-button" href="/cadastrar_cidades"> Cadastrar Cidades</a>';
                    echo '<a class="admin-button" href="/cadastrar_coletas"> Cadastrar Coletas</a>';
                    echo '<a class="admin-button" href="/cadastrar_locais"> Cadastrar Locais</a>';
                    echo '<a class="admin-button" href="/cadastrar_niveis"> Cadastrar Niveis</a>';
                    echo '<a class="admin-button" href="/cadastrar_users"> Cadastrar Users</a>';
                } else {
                    echo "<h2>Olá visitante</h2>";
                    echo '<a class="admin-button" href="/cadastrar_coletas"> Cadastrar Coletas</a>';
                }
            ?>
        </div>
    </div>
</main>
    
<?php include_once('assets/complementos/rodape.php');?>
