<?php
include("api/conexao.php");

if($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = $_POST['nome'];
    $senha = $_POST['senha'];
    $id_nivel = $_POST['id_nivel'];
    
    

    $sql = "INSERT INTO users (nome, senha, id_nivel) VALUES ('$nome', '$senha', '$id_nivel')";

    if ($conn->query($sql) === TRUE) {
        echo "Usuario cadastrado com sucesso!";
    } else {
        echo "Erro ao cadastrar: " .$conn->error;
    }

    $conn->close();
}
?>

<form method="POST" action="cadastrar_users.php">

    <label>Nome:</label>
    <input type="text" name="nome" required>
    <br><br>
    <label>Senha:</label>
    <input type="password" name="senha" required>
    <br><br>
    
     <?php
    include("api/conexao.php");
    $sql_niveis = "SELECT id_nivel, nome FROM niveis";
    $resultado = $conn->query($sql_niveis);
    ?>
    
    <label> Niveis:</label> <br>
    <select name="id_nivel" required>
        <option value="">Selecione um Nivel: </option>
        <?php
    if($resultado->num_rows > 0 ) {
        while($row = $resultado-> fetch_assoc()){
            echo "<option value='".$row['id_nivel']."'>".$row['nome']."</option>";
        }
    } else {
        echo "<option value=''>Nenhum usuario cadastrado</option>";
    }
        
        ?>
    </select><br><br>

    <input type="submit" value="Cadastrar">
</form>