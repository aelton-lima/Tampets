<?php
include 'conexao.php';

function listar_cidades() {
    $conn = $GLOBALS['conn'];
    $sql = "SELECT * FROM cidades";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $res = $stmt->get_result()->fetch_assoc();
    return $res;
}
function listar_cidade_id($id_cidade) {
    $conn = $GLOBALS['conn'];
    $sql = "SELECT * FROM cidades WHERE id_cidade = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $id_cidade);
    $stmt->execute();
    $res = $stmt->get_result()->fetch_assoc();
    return $res;
}

function listar_local_id($id_local) {
    $conn = $GLOBALS['conn'];
    $sql = "SELECT * FROM locais WHERE id_local = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $id_local);
    $stmt->execute();
    $res = $stmt->get_result()->fetch_assoc();
    return $res;
}

function listar_locais() {
    $conn = $GLOBALS['conn'];
    $sql = "SELECT * FROM locais";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $res = $stmt->get_result()->fetch_assoc();
    return $res;
}

function listar_niveis() {
    $conn = $GLOBALS['conn'];
    $sql = "SELECT * FROM niveis";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $res = $stmt->get_result()->fetch_assoc();
    return $res;
}

function listar_usuarios() {
    $conn = $GLOBALS['conn'];
    $sql = "SELECT * FROM users";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $res = $stmt->get_result()->fetch_assoc();
    return $res;
}
?>