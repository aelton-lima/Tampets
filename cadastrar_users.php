<?php
include("api/cadastro.php");
include("api/busca.php");
include 'api/sessao.php';

validar_adm();
$result = listar_niveis();

if($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = $_POST['nome'];
    $senha = $_POST['senha'];
    $id_nivel = $_POST['id_nivel'];
    
    cadastrarUsuario($nome,$senha,$id_nivel);
}
?>

<form method="POST" action="cadastrar_users.php">

    <label>Nome:</label>
    <input type="text" name="nome" required>
    <br><br>
    <label>Senha:</label>
    <input type="password" name="senha" required>
    <br><br>
    
    <label> Niveis:</label> <br>
    <select name="id_nivel" required>
        <option value="">Selecione um Nivel: </option>
        <?php
            while($row = $result->fetch_assoc()){
                echo "<option value" .$row['id_nivel']."'>".$row['nome']."</option>";
            }
        ?>
    </select><br><br>

    <input type="submit" value="Cadastrar">
</form>