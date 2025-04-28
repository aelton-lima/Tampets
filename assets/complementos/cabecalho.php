<nav>
    <div class="logo">Tampets</div>
    <ul>
      <li><a href="index.php"><i class="fas fa-home"></i> Início</a></li>
      <li><a href="sobre.html"><i class="fas fa-info-circle"></i> Sobre</a></li>
      <li><a href= "cidades.php"><i class="fa fa-map-signs"></i> Pontos de Coleta</a></li>
      <li><a href="ajudar.html"><i class="fas fa-hand-holding-heart"></i> Como Ajudar</a></li>
      <li><a href="contato.php"><i class="fas fa-envelope"></i> Contato</a></li>
      <?php
        include_once('api/sessao.php');
        if(isset($_SESSION['user'])) {
          echo '<li><a href="logout.php"><i class="fas fa-user"></i> Logout</a></li>';
          echo '<li><a href="painel_adm.php"><i class="fas fa-user"></i> Painel</a></li>';
        } else {
          echo '<li><a href="login.php"><i class="fas fa-user"></i> Login</a></li>';
        }
      ?>
    </ul>
  </nav>