<link rel="stylesheet" href="css/index.css">

<?php 
    include ("assets/complementos/cabecalho.php");
    include ('api/consulta.php')
?>
  
<div class="container">
    <h1>Bem-vindo à Tampets</h1>
    <p>Nosso site está no ar 🚀 Cuidando de vidas com amor e tampinhas.</p>
    <img src="assets/tampets.jpg" alt="Logo da Tampets" style="max-width: 100%; border-radius: 12px;">
</div>

<!DOCTYPE html>
<html lang="pt-br">
    <body>
        <h2>Relatório de Coletas por Mês, Local e Cidade</h2>

        <!-- Linha com total geral -->
        <div class="total-geral-row">
            <td colspan="2">Total Geral:</td>
            <td><?= htmlspecialchars($totalGeral) ?></td>
        </div>

         <!-- Linha com total de cidades cadastradas -->
        <div class="total-geral-row">
            <td colspan="2">Total de Cidades Cadastradas:</td>
            <td><?= htmlspecialchars($totalCidades) ?></td>
        </div>

        <!-- Linha com total de pontos de coleta -->
        <div class="total-geral-row">
            <td colspan="2">Total de Pontos de Coleta (Locais):</td>
            <td><?= htmlspecialchars($totalLocais) ?></td>
        </div>

        <div class="tabela-container">
            <table>
                <thead>
                    <tr>
                        <th>Ranking</th>
                        <th>Nome da Cidade</th>
                        <th>Total de Coletas</th>
                    </tr>
                </thead>
                <tbody>
                    <?php if (empty($coletasPorMes)) : ?>
                        <tr><td colspan="6">Nenhum dado encontrado.</td></tr>
                    <?php else : ?>
                        <?php foreach ($coletasPorMes as $coleta) : ?>
                            <tr>
                                <td><?= htmlspecialchars($coleta['ranking']).'º' ?></td>
                                <td><?= htmlspecialchars($coleta['cidade']) ?></td>
                                <td><?= htmlspecialchars($coleta['total']) ?></td>
                            </tr>
                        <?php endforeach; ?>
                    <?php endif; ?>
                </tbody>
            </table>
        </div>
    </body>
</html>

<?php include 'assets/complementos/rodape.php'; ?>
    