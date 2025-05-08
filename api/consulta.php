<?php
include_once('conexao.php');

// Função para obter a quantidade de coletas por mês e id_local
function getQuantidadePorMes($conn) {
    // Consulta SQL para obter a quantidade total de coletas por mês e id_local
    $sql = "SELECT RANK() OVER (ORDER BY SUM(c.quantidade) DESC) AS ranking, ci.nome AS cidade, SUM(c.quantidade) AS total
        FROM coletas c
        JOIN locais l ON c.id_local = l.id_local
        JOIN cidades ci ON l.id_cidade = ci.id_cidade
        WHERE YEAR(c.data) = YEAR(CURDATE())
        GROUP BY ci.id_cidade, ci.nome
        ORDER BY total DESC";

    // Executa a consulta
    $result = mysqli_query($conn, $sql);

    // Verifica se a consulta foi bem-sucedida
    if (!$result) {
        die("Erro na consulta: " . mysqli_error($conn));
    }

    // Armazena os resultados em um array
    $dados = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $dados[] = $row;
    }

    // Retorna os dados
    return $dados;
}

// Chama a função e obtém os dados
$coletasPorMes = getQuantidadePorMes($conn);

$totalGeral = 0;
foreach ($coletasPorMes as $coleta) {
    $totalGeral += $coleta['total'];
}

// Exibe os dados
//echo "<pre>";
//print_r($coletasPorMes);
//echo "</pre>";

// Fecha a conexão com o banco de dados
function listar_cidades_com_total_pontos() {
    global $conn;

    $sql = "SELECT 
                c.id_cidade, 
                c.nome, 
                COUNT(l.id_local) AS total_pontos
            FROM cidades c
            LEFT JOIN locais l ON c.id_cidade = l.id_cidade
            GROUP BY c.id_cidade, c.nome
            ORDER BY c.nome";

    return mysqli_query($conn, $sql);
}

mysqli_close($conn);
?>
