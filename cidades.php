<link rel="stylesheet" href="css/index.css">

<?php 
    include 'assets/complementos/cabecalho.php';
    include 'api/consulta.php';
    include 'api/conexao.php';
    
?>
  
<div class="container">
  <?php
    $listaCidades = listar_cidades_com_total_pontos();
      echo '<ul>';
      while($row = $listaCidades->fetch_assoc()) {
          echo '<li><a href="/tampets/pontos/'.$row['id_cidade'].'">'.$row['nome'].'</a> - '.$row['total_pontos'].' ponto(s) de coleta</li>';
      }
      echo '</ul>'; 
  ?>
</div>

<?php include 'assets/complementos/rodape.php'; ?>


    