<link rel="stylesheet" href="/css/login.css">
<?php
include_once('api/autenticacao.php');
include_once('assets/complementos/cabecalho.php'); 

if(isset($_POST['submit'])) {
    $user = $_POST['user'];
    $pass = $_POST['pass'];
    login($user,$pass);
}
?>
<main>
    <div class="container">
    <h1>Login</h1>

    <?php if (isset($error)){ ?>
        <p class="error"><?php echo $error; ?></p>
        <?php } ?>

        <form method="post" action="login.php">
            <div class="form-group">
            <label for="user">Usuário</label>
            <input type="text" id="user" name="user" required class="form-control" placeholder="Digite o Usuário">
            </div>

            <div class="form-group">
            <label for="pass">Senha</label>
            <input type="password" id="pass" name="pass" required class="form-control" placeholder="Digite a Senha">
            </div>

            <div class="form-group">
                <input type="submit" name="submit" value="Entrar" class="btn btn-primary">
            </div>
        </form>
    </div>
</main>
<?php include 'assets/complementos/rodape.php'; ?>