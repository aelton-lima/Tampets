<?php 
    include 'assets/complementos/cabecalho.php';


    include ('api/busca.php');

    $listaLocais = listar_locais_cidade($_GET['id']);

      while($row = $listaLocais -> fetch_assoc()) {
        echo "<p>". 'ID local: ',$row['id_local'],
        ' | ', 'Rua: ',$row['rua'],
        ' | ', 'Bairro: ',$row['bairro'],
        ' | ', 'Numero: ', $row['numero'],
        ' | ', 'CEP: ', $row['cep'],
        ' | ' , 'ID Cidade: ',$row['id_cidade']."</p>";
      } 
      
 include 'assets/complementos/rodape.php'; 
 ?>
