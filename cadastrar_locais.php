<?php
include ("api/sessao.php");
include ("api/cadastro.php");
include ("api/busca.php");

validar_adm();

$listaCidade = listar_cidades();


if($_SERVER["REQUEST_METHOD"] == "POST") {
    $rua = $_POST['rua'];
    $bairro = $_POST['bairro'];
    $numero = $_POST['numero'];
    $cep = $_POST['cep'];
    $id_cidade = $_POST['id_cidade'];

    cadastrarLocal($rua, $bairro, $numero, $cep, $id_cidade);
}
?>

<!-- Formulario HTML -->
<div id="container">
    <form method="POST" action="cadastrar_locais.php" id="form">
        <label>Rua: </label>
        <input type="text" name="rua" required placeholder="Digite o nome da rua:">
        <br><br>

        <label>Bairro: </label>
        <input type="text" name="bairro" required placeholder="Digite o nome do bairro:">
        <br><br>

        <label>Número: </label>
        <input type="text" name="numero" required placeholder="Digite o número do local:">
        <br><br>

        <label>CEP: </label>
        <input type="text" name="cep" required placeholder="Digite o CEP:">
        <br><br>

        <label>Cidade:</label><br>
        <select name="id_cidade" required>
            <option value="">Selecione uma Cidade</option>
            <?php
                while($row = $listaCidade -> fetch_assoc()) {
                    echo "<option value='".$row['id_cidade'],"'>".$row['nome']."</option>";
                }
            ?>
        </select><br><br>

        <input type="submit" value="Cadastrar">
    </form>
</div>