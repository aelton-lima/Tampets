<link rel="stylesheet" href="/css/cidades.css">
<script defer src="/js/cidades.js"></script>

<?php 
  include_once('assets/complementos/cabecalho.php');
  include_once('api/busca.php');
  $listaCidades = listar_cidades();
?>
<main>
<div class="cards-wrapper">
  <div class="cards-container">
    <?php
      while($row = $listaCidades -> fetch_assoc()) {

        echo "<a href='/pontos/$row[id_cidade]' class='card' data-index='$row[total_pontos]'>
          <div class='card-top'>
            <div class='card-text'><div class='main-text'>$row[nome]</div></div>
          </div>
          <div class='card-middle'>
            <span class='card-number numero-grande'></span>
          </div>
        </a>";
        }
    ?>
  </div>
</div>
</main>

<?php include 'assets/complementos/rodape.php'; ?>