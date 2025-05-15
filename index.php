<link rel="stylesheet" href="/css/index.css">
<script defer src="/js/index.js"></script>

<?php
  include ("api/consulta.php");
  include ("assets/complementos/cabecalho.php");

  $totalCidades = getTotalCidades();
  $totalLocais = getTotalLocais();

  $coletaPorAno = getTotalColetaPorAno();
  $rankingAno = getRankingCidadesAno();
  
  $coletaPorMes = getTotalColetaPorMes();
  $rankingMes = getRankingCidadesMes();

?>

<section class="main-banner">
  O Projeto TamPets coleta e recicla tampinhas plásticas e destina o valor arrecadado em benefício da causa animal de Sorocaba e Região.
</section>
      
<section class="sections">
  <div class="section aceitamos">
    <strong>ACEITAMOS</strong><br><br>
    Veja quais tipos de tampinhas nós aceitamos.<br><br>
    <a href="ajudar">SAIBA MAIS</a>
  </div>

  <div class="section quem-somos">
    <strong>QUEM SOMOS</strong><br><br>
    Conheça melhor o nosso projeto e a nossa missão.<br><br>
    <a href="sobre">SAIBA MAIS</a>
  </div>

  <div class="section pontos-coleta">
    <strong>PONTOS DE COLETA</strong><br><br>
    Encontre um ponto de coleta próximo a você.<br><br>
    <a href="cidades">SAIBA MAIS</a>
  </div>

  <div class="section participe">
    <strong>PARTICIPE</strong><br><br>
    Saiba como doar tampinhas ou colaborar de outras formas.<br><br>
    <a href="#">SAIBA MAIS</a>
  </div>
</section>
      
<section class="sections" id="contadores">
  <div class="section contador-item">
    <strong><span class="counter" data-target="<?= htmlspecialchars($totalCidades) ?>">0</span>+</strong><br><br>
    Cidades Cadastradas<br><br>
  </div>

  <div class="section contador-item">
    <strong><span class="counter" data-target="<?= htmlspecialchars($totalLocais) ?>">0</span>+</strong><br><br>
    Pontos de Coletas<br><br>
  </div>

  <div class="section contador-item">
    <strong><span class="counter" data-target="<?php echo $coletaPorAno; ?>">0</span>+</strong><br><br>
    Total Arrecadado no Ano<br><br>
  </div>

  <div class="section contador-item">
    <strong><span class="counter" data-target="<?php echo $coletaPorMes ?>">0</span>+</strong><br><br>
    Total Arrecadado no Mês<br><br>
  </div>
  
</section>


<section class="tabela-container">
  <h2>Ranking Anual</h2>
  <div class="tabela-container">
    <table>
      <thead>
        <tr>
          <th>Ranking</th>
          <th>Cidade</th>
          <th>Total Coletado</th>
        </tr>
      </thead>
      <tbody id="corpo-tabela">
        <?php 
          if (empty($rankingAno)){
            echo "<tr><td colspan='6'>Nenhum dado encontrado.</td></tr>";
          }else{
            foreach ($rankingAno as $coleta){
              echo "
                <tr>
                  <td>".htmlspecialchars($coleta['ranking'])."º</td>
                  <td>".htmlspecialchars($coleta['cidade'])."</td>
                  <td class='counter' data-target='".htmlspecialchars($coleta['total'])."'>0</td>
                </tr>";
            }
          }
        ?>
      </tbody>
    </table>
  </div>
</section>


<section class="tabela-container">
  <h2>Ranking Mensal</h2>
  <div class="tabela-container">
    <table>
      <thead>
        <tr>
          <th>Ranking</th>
          <th>Cidade</th>
          <th>Total Coletado</th>
        </tr>
      </thead>
      <tbody id="corpo-tabela">
        <?php 
          if (empty($rankingMes)){
            echo "<tr><td colspan='6'>Nenhum dado encontrado.</td></tr>";
          }else{
            foreach ($rankingMes as $coleta){
              echo "
                <tr>
                  <td>".htmlspecialchars($coleta['ranking'])."º</td>
                  <td>".htmlspecialchars($coleta['cidade'])."</td>
                  <td class='counter' data-target='".htmlspecialchars($coleta['total'])."'>0</td>
                </tr>";
            }
          }
        ?>
      </tbody>
    </table>
  </div>
</section>



<?php include 'assets/complementos/rodape.php'; ?>