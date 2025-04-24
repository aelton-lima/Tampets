<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

function validar_sessao( ) {
    if (!isset($_SESSION['user'])) {
        header('Location: login.php');
    }
}

function encerrar_sessao(){
    session_unset();
}

?>