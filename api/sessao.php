<?php
session_start();
function validar_sessao( ) {
    if (!isset($_SESSION['user'])) {
        header('Location: login.php');
    }
}
?>