<?php
include 'api/autenticacao.php';

if(isset($_POST['submit'])) {
    $user = $_POST['user'];
    $pass = $_POST['pass'];
    login($user,$pass);
}
?>
 
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <title>Início | Tampets</title>
  <link rel="stylesheet" href="css/index.css">
   <!-- Adicionando Font Awesome -->
   <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
</head>
<body>
    <?php include 'assets/complementos/cabecalho.php'; ?>

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

    <?php include 'assets/complementos/rodape.php'; ?>
</body>
</html>

    
 