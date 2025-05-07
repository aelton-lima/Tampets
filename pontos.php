<link rel="stylesheet" href="/tampets/css/pontos.css">
<?php 
    include ('assets/complementos/cabecalho.php');
    include ('api/busca.php');

    $listaLocais = listar_locais_cidade($_GET['id']);
?>
<div class="header" style="text-align: center;">
  <h1>Pontos de Coleta</h1>
  <h2>Zona Sul</h2>
</div>

<div class="cards-container">

<?php while($row = $listaLocais -> fetch_assoc()) {
        echo '<div class="card-wrapper">
      <div class="card">
        <div class="card-texto">
          <div class="titulo">'.$row['nome'].'</div>
          <div class="descricao">Atendimento:'.$row['atendimento'].'</div>
        </div>
      </div>
      <div class="card-bottom">
        <a href="'.$row['link_maps'].'" target="_blank"><img src="https://cdn-icons-png.flaticon.com/512/684/684908.png" alt="Maps" /></a>
        <a href="https://api.whatsapp.com/send?phone='.$row['telefone'].'" target="_blank"><img src="https://cdn-icons-png.flaticon.com/512/733/733585.png" alt="WhatsApp" /></a>
        <a href="tel:+55'.$row['telefone'].'" target="_blank"><img src="https://cdn-icons-png.flaticon.com/512/733/733585.png" alt="telefone" /></a>
        </div>
  </div>';
      }
?>

</div>

<?php include 'assets/complementos/rodape.php'; ?>