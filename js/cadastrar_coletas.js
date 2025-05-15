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