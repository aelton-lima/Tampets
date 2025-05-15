<?php
include_once('conexao.php');

// Função para obter a quantidade de coletas por mês e id_local
function getRankingCidadesMes() {
    $conn = $GLOBALS['conn'];
    $sql = "SELECT RANK() OVER (ORDER BY SUM(c.quantidade) DESC) AS ranking, ci.nome AS cidade, SUM(c.quantidade) AS total
        FROM coletas c
        JOIN locais l ON c.id_local = l.id_local
        JOIN cidades ci ON l.id_cidade = ci.id_cidade
        WHERE MONTH(c.data) = MONTH(CURDATE())
        GROUP BY ci.id_cidade, ci.nome
        ORDER BY total DESC";
    $result = mysqli_query($conn, $sql);
    if (!$result) {
        die("Erro na consulta: " . mysqli_error($conn));
    }
    $dados = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $dados[] = $row;
    }
    return $dados;
}

function getRankingCidadesAno() {
    $conn = $GLOBALS['conn'];
    $sql = "SELECT RANK() OVER (ORDER BY SUM(c.quantidade) DESC) AS ranking, ci.nome AS cidade, SUM(c.quantidade) AS total
        FROM coletas c
        JOIN locais l ON c.id_local = l.id_local
        JOIN cidades ci ON l.id_cidade = ci.id_cidade
        WHERE YEAR(c.data) = YEAR(CURDATE())
        GROUP BY ci.id_cidade, ci.nome
        ORDER BY total DESC";
    $result = mysqli_query($conn, $sql);
    if (!$result) {
        die("Erro na consulta: " . mysqli_error($conn));
    }
    $dados = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $dados[] = $row;
    }
    return $dados;
}

function getTotalCidades() {
    $conn = $GLOBALS['conn'];
    $sql = "SELECT COUNT(*) AS total_cidades FROM cidades";
    $result = mysqli_query($conn, $sql);
    if (!$result) {
        die("Erro ao contar cidades: " . mysqli_error($conn));
    }
    $row = mysqli_fetch_assoc($result);
    return $row['total_cidades'];
}

function getTotalLocais() {
    $conn = $GLOBALS['conn'];
    $sql = "SELECT COUNT(*) AS total_locais FROM locais";
    $result = mysqli_query($conn, $sql);
    if (!$result) {
        die("Erro ao contar locais: " . mysqli_error($conn));
    }
    $row = mysqli_fetch_assoc($result);
    return $row['total_locais'];
}

function getTotalColetaPorAno() {
    $conn = $GLOBALS['conn'];
    $sql = "SELECT SUM(quantidade) AS total FROM coletas WHERE YEAR(data) = YEAR(CURDATE())";
    $result = mysqli_query($conn, $sql);
    if (!$result) {
        die("Erro ao contar locais: " . mysqli_error($conn));
    }
    $row = mysqli_fetch_assoc($result);
    return $row['total'];
}

function getTotalColetaPorMes() {
    $conn = $GLOBALS['conn'];
    $sql = "SELECT SUM(quantidade) AS total FROM coletas WHERE MONTH(data) = MONTH(CURDATE())";
    $result = mysqli_query($conn, $sql);
    if (!$result) {
        die("Erro ao contar locais: " . mysqli_error($conn));
    }
    $row = mysqli_fetch_assoc($result);
    return $row['total'];
}

?>