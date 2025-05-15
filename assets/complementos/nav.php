
<header>
  <div style="display: flex; align-items: center;">
    <a href="/index">
      <img src="/assets/img/tampucho.png" alt="TamPets Logo">
    </a>
    <h2 style="margin-left: 10px;">TamPets</h2>
  </div>
  
  <div class="menu-toggle" id="menu-toggle">
    <span></span>
    <span></span>
    <span></span>
  </div>
       
  <nav id="nav">
    <a href= "/cidades"><i class="fa fa-map-signs"></i> Pontos de Coleta</a>
    <a href="/sobre"><i class="fas fa-info-circle"></i> Sobre</a>
    <a href="/ajudar"><i class="fas fa-hand-holding-heart"></i> Como Ajudar</a>
    <!-- <a href="/contato"><i class="fas fa-envelope"></i> Contato</a> -->
    <?php
      include_once('api/sessao.php');
      if(isset($_SESSION['user'])) {
        echo '<a href="/painel_adm"><i class="fas fa-user"></i> Painel ADM</a>';
        echo '<a href="/logout"><i class="fas fa-user"></i> Logout</a>';
      } else {
        echo '<a href="/login"><i class="fas fa-user"></i> Login</a>';
      }
    ?>
  </nav>
</header>