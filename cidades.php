<!-- include do css -->
<?php 
    include 'assets/complementos/cabecalho.php';
    
?>
  
  <div class="container">
    <?php 
      include ('api/busca.php');

    $listaCidades = listar_cidades();

    while($row = $listaCidades -> fetch_assoc()) {
      echo '<li><a href="/tampets/pontos/'.$row['id_cidade'].'"> '.$row['nome'].'</a></li>';
    }

    ?>
  </div>

  <?php include 'assets/complementos/rodape.php'; ?>


    