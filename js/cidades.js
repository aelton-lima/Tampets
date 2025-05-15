const cards = document.querySelectorAll('.card');
    cards.forEach(card => {
        const index = card.dataset.index;
        const numberSpan = card.querySelector('.card-middle .card-number');
        numberSpan.textContent = index;
    });