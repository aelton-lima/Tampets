<?php

function cadastrarCidade($conn, $nome) {
    $sql = "INSERT INTO cidades (nome) VALUES ('$nome')";

    if ($conn->query($sql) === TRUE) {
        echo "Cidade cadastrada com sucesso!";
    } else {
        echo "Erro ao cadastrar: " . $conn->error;
    }
}

function cadastrarLocal($conn, $rua, $bairro, $numero, $cep, $id_cidade) {
    $sql = "INSERT INTO locais (rua, bairro, numero, cep, id_cidade) 
            VALUES ('$rua', '$bairro', '$numero', '$cep', '$id_cidade')";

    if ($conn->query($sql) === TRUE) {
        echo "Local cadastrado com sucesso!";
    } else {
        echo "Erro ao cadastrar: " . $conn->error;
    }
}

?>