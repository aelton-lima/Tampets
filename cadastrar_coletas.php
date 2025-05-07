<?php
include_once("api/sessao.php");
include_once("api/cadastro.php");
include_once("api/busca.php");
include_once("assets/complementos/cabecalho.php");
include_once("assets/complementos/nav.php");

validar_sessao();

$listaLocais = listar_locais();
$listaUsuarios = listar_usuarios();
$listaCidades = listar_cidades();

if($_SERVER["REQUEST_METHOD"] == "POST") {
    $quantidade = $_POST['quantidade'];
    $id_local = $_POST['id_local'];
    $id_user = $_SESSION['user']['id'];

    cadastrarColeta( $quantidade, $id_local, $id_user);
}
?>

<!-- Formulario HTML do cadastro-->
<div id="container">
    <form method="POST" action="cadastrar_coletas.php" id="form">
       
        <label>Quantidade: </label>
        <input type="number" name="quantidade" required placeholder="Digite a quantidade em (kg):">
        <br><br>

        <label for="cidade">Selecione a Cidade:</label>
        <select name="id_cidade" id="cidade" onchange="atualizarLocais()" required>
            <option value="">Selecione uma Cidade</option>
            <?php
                // Exibe as cidades
                while($row = $listaCidades->fetch_assoc()) {
                    echo "<option value='".$row['id_cidade']."'>".$row['nome']."</option>";
                }
            ?>
        </select><br><br>

        <!-- O campo de local será inicialmente escondido -->
        <div id="local-container" style="display:none;">
            <label for="local">Selecione o Local:</label>
            <select name="id_local" id="local" required>
                <option value="">Selecione o Local</option>
                <?php
                    // Exibe todos os locais inicialmente
                    while($row = $listaLocais->fetch_assoc()) {
                        echo "<option value='".$row['id_local']."' data-cidade='".$row['id_cidade']."'>".$row['nome']." - ".$row['bairro']."</option>";
                    }
                ?>
            </select><br><br>
        </div>

        <input type="submit" value="Cadastrar">
    </form>
</div>

<script>
    // Função para atualizar a lista de locais com base na cidade selecionada
    function atualizarLocais() {
        const cidadeSelecionada = document.getElementById('cidade').value;
        const locais = document.querySelectorAll('#local option');
        const localContainer = document.getElementById('local-container');
        
        // Se uma cidade for selecionada, mostra a seção de locais
        if (cidadeSelecionada !== "") {
            localContainer.style.display = "block"; // Exibe o campo de locais
        } else {
            localContainer.style.display = "none"; // Esconde o campo de locais
        }

        // Filtra os locais para exibir apenas os correspondentes à cidade selecionada
        locais.forEach(function(local) {
            if (cidadeSelecionada === "" || local.getAttribute('data-cidade') === cidadeSelecionada) {
                local.style.display = "block"; // Exibe o local
            } else {
                local.style.display = "none"; // Esconde o local
            }
        });

        // Reseta a seleção do local para o primeiro valor em caso de mudança de cidade
        document.getElementById('local').value = "";
    }
</script>

<?php include 'assets/complementos/rodape.php'; ?>