<?php
include ("api/conexao.php");
if($_SERVER["REQUEST_METHOD"] == "POST") {
    $rua = $_POST['rua'];
    $bairro = $_POST['bairro'];
    $numero = $_POST['numero'];
    $cep = $_POST['cep'];
    $id_cidade = $_POST['id_cidade'];

    $sql = "INSERT INTO locais (rua,bairro,numero,cep,id_cidade) VALUES ('$rua','$bairro', '$numero','$cep','$id_cidade')";

    if($conn->query($sql) === TRUE) {
    echo "Cidade cadastrada com sucesso!";
    } else {
    echo "Erro ao cadastrar: " .$conn->error;
    }

    // Fecho comunicação
    $conn->close();
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

 <label>Id_cidade: </label>
 <input type="text" name="id_cidade" required placeholder="Digite o ID da cidade:">
 <br><br>

 <?php
include("api/conexao.php");
$sql_cidades = "SELECT id_cidade, nome FROM cidades";
$resultado = $conn->query($sql_cidades);
 ?>

<label>Cidade:</label><br>
<select name="id_cidade" required>
    <option value="">Selecione uma Cidade</option>

<?php
if($resultado->num_rows > 0) {
    while($row = $resultado-> fetch_assoc()) {
        echo "<option value='".$row['id_cidade'],"'>".$row['nome']."</option>";
    }
} else {
    echo "<option value=''>Nenhuma cidade cadastrada.</option>";
}
?>
</select><br><br>

 <input type="submit" value="Cadastrar">

<?php

?>

 </form>
 </div>



