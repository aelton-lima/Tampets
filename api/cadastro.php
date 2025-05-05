<?php
include_once('conexao.php');


function cadastrarCidade($nome) {
    $conn = $GLOBALS['conn'];
    $sql = "INSERT INTO cidades (nome) VALUES ('$nome')";

    if ($conn->query($sql) === TRUE) {
        return "Cidade cadastrada com sucesso!";
    } else {
        return "Erro ao cadastrar: " . $conn->error;
    }
}

function cadastrarLocal($nome, $rua, $bairro, $numero, $cep, $telefone, $link_maps, $atendimento, $id_cidade) {
    $conn = $GLOBALS['conn'];
    $sql = "INSERT INTO locais (nome, rua, bairro, numero, cep, telefone, link_maps, atendimento, id_cidade) 
            VALUES ('$nome', '$rua', '$bairro', '$numero', '$cep', '$telefone', '$link_maps', '$atendimento', '$id_cidade')";

    if ($conn->query($sql) === TRUE) {
        return "Local cadastrado com sucesso!";
    } else {
        return "Erro ao cadastrar: " . $conn->error;
    }
}

function cadastrarUsuario($nome,$senha,$id_nivel) {
    $conn = $GLOBALS['conn'];
     $sql = "INSERT INTO users (nome, senha, id_nivel)
            VALUES ('$nome', '$senha', '$id_nivel')";

    if ($conn->query($sql) === TRUE) {
        return "Usuario cadastrado com sucesso!";
    } else {
        return "Erro ao cadastrar: " .$conn->error;
    } 
}

function cadastrarNiveis($nome) {
    $conn = $GLOBALS['conn'];
    $sql = "INSERT INTO niveis (nome) VALUES ('$nome')";

    if ($conn->query($sql) === TRUE) {
        return "Usuario cadastrado com sucesso!";
    } else {
        return "Erro ao cadastrar: " .$conn->error;
        
    }
}

function cadastrarColeta($quantidade, $id_local, $id_user) {
    $conn = $GLOBALS['conn'];
    $sql = "INSERT INTO coletas (quantidade, id_local, id_user) 
            VALUES ('$quantidade', '$id_local', '$id_user')";

    if ($conn->query($sql) === TRUE) {
        return "Local cadastrado com sucesso!";
    } else {
        return "Erro ao cadastrar: " . $conn->error;
    }
}

?>