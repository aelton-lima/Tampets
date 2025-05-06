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
<head>
    <meta charset="UTF-8">
    <title>Relatório de Coletas por Mês</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f9fc;
            margin: 0;
            padding: 0;
        }
        h2 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }
        .tabela-container {
            display: flex;
            justify-content: center;
            padding: 20px;
        }
        table {
            border-collapse: collapse;
            width: 50%;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        th, td {
            border: 1px solid #ccc;
            padding: 12px;
            text-align: center;
        }
        th {
            background-color: #f47c48;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #eef3f9;
        }
        tr:hover {
            background-color: #d0e4f5;
        }
    </style>
</head>

<body>
    <h2>Relatório de Coletas por Mês, Local e Cidade</h2>
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
    