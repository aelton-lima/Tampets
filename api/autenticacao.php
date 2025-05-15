<?php
include_once('conexao.php');
include_once('sessao.php');

function login($user, $pass) {
    $conn = $GLOBALS['conn'];

    // Buscar na tabela a coluna e "segura" o user para analise de situação
    $stmt = $conn->prepare("SELECT * FROM users WHERE nome = ?");
    $stmt->bind_param("s", $user);
    $stmt->execute();
    $result = $stmt->get_result();
 
    // Número de objetos tem duas tratativas: Uma para encontrado e outra para não encontrado
    if($result->num_rows > 0) {
        $row = $result ->fetch_assoc();
   
        // Se o usuario e a senha der ok chama a tela bem vindo
        if ($row['senha']===$pass) {
            registrar_usuario($row);
            header(header: "Location: painel_adm"); // Redirecionar para a página Bem-Vindo
            exit();
        } else {
            $error = "Senha Incorreta.";
        }
   
    } else {
            $error = "Usuário não encontrado";
    }
 
    $stmt->close();
    $conn->close();
}

?>