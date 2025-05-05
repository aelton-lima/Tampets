<?php
include_once("api/sessao.php");
include_once("api/cadastro.php");
include_once("api/busca.php");
include_once("assets/complementos/cabecalho.php");
include_once("assets/complementos/nav.php");

validar_sessao();

$listaLocais = listar_locais();
$listaUsuarios = listar_usuarios();

if($_SERVER["REQUEST_METHOD"] == "POST") {
    $quantidade = $_POST['quantidade'];
    $id_local = $_POST['id_local'];
    $id_user = $_SESSION['user']['id'];

    cadastrarColeta( $quantidade, $id_local, $id_user);
}
?>

<!-- Formulario HTML -->
<div id="container">
    <form method="POST" action="cadastrar_coletas.php" id="form">
       
        <label>Quantidade: </label>
        <input type="number" name="quantidade" required placeholder="Digite a quantidade:">
        <br><br>

        <select name="id_local" required>
            <option value="">Selecione o Local</option>
            <?php
                while($row = $listaLocais -> fetch_assoc()) {
                    echo "<option value='".$row['id_local'],"'>".$row['bairro']."</option>";
                }
            ?>
        </select><br><br>

        <input type="submit" value="Cadastrar">
    </form>
</div>
<?php include 'assets/complementos/rodape.php'; ?>