<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <title>Cidades</title>
  <link rel="stylesheet" href="css/pagina.css">
  <link rel="stylesheet" href="css/cabecalho.css">
  <link rel="stylesheet" href="css/footer.css">
   <!-- Adicionando Font Awesome -->
   <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
</head>
<body>
  <?php 
    include 'assets/complementos/cabecalho.php';
  ?>
  
  <div class="container">
    <?php 
    include ('api/busca.php');

    $listaCidades = listar_cidades();

    while($row = $listaCidades -> fetch_assoc()) {
      echo "<p>".$row['nome']."</p>";
    }


    ?>
  </div>

  <?php include 'assets/complementos/rodape.php'; ?>
</body>
</html>

    