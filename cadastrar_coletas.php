<?php
include("api/cadastro.php");
include("api/sessao.php");
validar_sessao();

if($_SERVER["REQUEST_METHOD"] == "POST") {
    $id_local = $_POST['id_local'];
    $quantidade = $_POST['quantidade'];
    $data = $_POST['data'];
    
    cadastrarColeta($id_local,$quantidade,$data);
}
?>

<!-- Formulario HTML -->
<div id="container">
    <form method="POST" action="cadastrar_coletas.php" id="form">
        <label>Cidade:</label><br>
        <select name="id_cidade" required>
            <option value="">Selecione uma Cidade</option>
            <?php
                while($row = $listaCidade -> fetch_assoc()) {
                    echo "<option value='".$row['id_cidade'],"'>".$row['nome']."</option>";
                }
            ?>
        </select><br><br>

        <label>Quantidade(Kg): </label>
        <input type="text" name="quantidade" required placeholder="Digite o peso:">
        <br><br>

        <label>Data: </label>
        <input type="text" name="data" required placeholder="00/00/0000:">
        <br><br>

        <input type="submit" value="Cadastrar">
    </form>
</div>