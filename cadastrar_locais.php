<?php
include ("api/sessao.php");
include ("api/cadastro.php");
include ("api/busca.php");
include ('assets/complementos/cabecalho.php');

validar_adm();

$listaCidade = listar_cidades();


if($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = $_POST ['nome'];
    $rua = $_POST['rua'];
    $bairro = $_POST['bairro'];
    $numero = $_POST['numero'];
    $cep = $_POST['cep'];
    $telefone = $_POST['telefone'];
    $link_maps = $_POST['link_maps'];
    $atendimento = $_POST['atendimento'];
    $id_cidade = $_POST['id_cidade'];

    cadastrarLocal($nome, $rua, $bairro, $numero, $cep, $telefone, $link_maps, $atendimento, $id_cidade);
}
?>

<!-- Formulario HTML -->
<div id="container">
    <form method="POST" action="cadastrar_locais.php" id="form">
        <label>Nome: </label>
        <input type="text" name="nome" required placeholder="Digite o nome:">
        <br><br>

        <label>Rua: </label>
        <input type="text" name="rua" required placeholder="Digite o nome da rua:">
        <br><br>

        <label>Bairro: </label>
        <input type="text" name="bairro" required placeholder="Digite o nome do bairro:">
        <br><br>

        <label>Número: </label>
        <input type="number" name="numero" required placeholder="Digite o número do local:">
        <br><br>

        <label>CEP: </label>
        <input type="number" name="cep" required placeholder="Digite o CEP:">
        <br><br>

        <label>Telefone: </label>
        <input type="number" name="telefone" required placeholder="Digite o telefone:">
        <br><br>

        <label>Link maps: </label>
        <input type="text" name="link_maps" required placeholder="Digite o link do google maps:">
        <br><br>

        <label>Atendimento: </label>
        <input type="text" name="atendimento" required placeholder="Digite alguma observação:">
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
<?php include 'assets/complementos/rodape.php'; ?>