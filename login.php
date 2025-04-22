<?php
session_start();
 
// Solicita o usuario e a senha para entrar
if(isset($_POST['submit'])) {
    $user = $_POST['user'];
    $pass = $_POST['pass'];
 
    // Envia sinal para o banco
    $conn = new mysqli (hostname: "localhost", username: "root", password: "", database: "db_tampets");
 
    // Caso não conecte ao banco da uma mensagem de erro
    if($conn->connect_error){
        die("Falha na conexão com o Banco de Dados: ".$conn->connect_error);
    }
 
    // Buscar na tabela a coluna e "segura" o user para analise de situação
    $stmt = $conn->prepare("SELECT * FROM cliente WHERE usuario = ?");
    $stmt->bind_param("s", $user);
    $stmt->execute();
    $result = $stmt->get_result();
 
    // Número de objetos tem duas tratativas: Uma para encontrado e outra para não encontrado
    if($result->num_rows > 0) {
        $row = $result ->fetch_assoc();
   
        // Se o usuario e a senha der ok chama a tela bem vindo
        if ($row['senha']===$pass) {
            $_SESSION['user']=$user;
            header(header: "Location: index.php"); // Redirecionar para a página Bem-Vindo
            exit();
        } else {
            $error = "Senha Incorreta.";
        }
   
    } else {
            $error = "Usuário não encontrado";
    }
 
        $stmt->close();
        $conn->close();
}  
 
?>
 
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LoginTampets</title>
</head>
<body>
    <div class="container">
        <h1>Login</h1>
        <?php if (isset($error)){ ?>
            <p class="error"><?php echo $error; ?></p>
            <?php } ?>
 
            <!-- Chamando o form "usuário" que irá receber o objeto do usuário-->
            <form method="post" action="login.php">
                <div class="form-group">
                <label for="user">Usuário</label>
                <input type="text" id="user" name="user" required class="form-control" placeholder="Digite o Usuário">
                </div>
 
                <div class="form-group">
                <label for="pass">Senha</label>
                <input type="text" id="pass" name="pass" required class="form-control" placeholder="Digite a Senha">
                </div>
 
                <!-- Chama o botão "Entrar" -->
                <div class="form-group">
                    <input type="submit" name="submit" value="Entrar" class="btn btn-primary">
                </div>
            </form>
    </div>
</body>
</html>
 