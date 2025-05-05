<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

function validar_sessao() {
    if (!isset($_SESSION['user'])) {
        header('Location: login');
    }
}

function encerrar_sessao(){
    session_unset();
}


function validar_adm() {
    validar_sessao();
    if ($_SESSION['user']['nivel'] != 1) {
        header('Location: painel_adm');
    }
}

function registrar_usuario($user) {
    $_SESSION['user'] = array('id'=>$user['id_user'], 'nome'=>$user['nome'], 'nivel'=>$user['id_nivel']);
}
?>