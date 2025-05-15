<link rel="stylesheet" href="/css/cadastrar_coletas.css">
<script defer src="/js/cadastrar_coletas.js"></script>

<?php
include_once("api/sessao.php");
include_once("api/cadastro.php");
include_once("api/busca.php");
include_once("assets/complementos/cabecalho.php");

validar_sessao();

$listaLocais = listar_locais();
$listaUsuarios = listar_usuarios();
$listaCidades = listar_cidades();

if($_SERVER["REQUEST_METHOD"] == "POST") {
    $quantidade = $_POST['quantidade'];
    $id_local = $_POST['id_local'];
    $id_user = $_SESSION['user']['id'];
    cadastrarColeta( $quantidade, $id_local, $id_user);
}
?>

<main>
<!-- Formulario HTML do cadastro-->
<div id="container">
    <form method="POST" action="cadastrar_coletas.php" id="form">
       
        <label>Quantidade: </label>
        <input type="number" name="quantidade" required placeholder="Digite a quantidade em (kg):">
        <br><br>

        <label for="cidade">Selecione a Cidade:</label>
        <select name="id_cidade" id="cidade" onchange="atualizarLocais()" required>
            <option value="">Selecione uma Cidade</option>
            <?php
                // Exibe as cidades
                while($row = $listaCidades->fetch_assoc()) {
                    echo "<option value='".$row['id_cidade']."'>".$row['nome']."</option>";
                }
            ?>
        </select><br><br>

        <!-- O campo de local será inicialmente escondido -->
        <div id="local-container" style="display:none;">
            <label for="local">Selecione o Local:</label>
            <select name="id_local" id="local" required>
                <option value="">Selecione o Local</option>z
                <?php
                    // Exibe todos os locais inicialmente
                    while($row = $listaLocais->fetch_assoc()) {
                        echo "<option value='".$row['id_local']."' data-cidade='".$row['id_cidade']."'>".$row['nome']." - ".$row['bairro']."</option>";
                    }
                ?>
            </select><br><br>
        </div>

        <input type="submit" value="Cadastrar">
    </form>
</div>
</main>

<?php include 'assets/complementos/rodape.php'; ?>