const toggle = document.getElementById('menu-toggle');
const nav = document.getElementById('nav');
let timeoutId;

toggle.addEventListener('click', () => {
  nav.classList.add('active');
  clearTimeout(timeoutId);
  timeoutId = setTimeout(() => {
    nav.classList.remove('active');
  }, 3000);
});



// Contadores animados
const counters = document.querySelectorAll('.counter');
const contadorItems = document.querySelectorAll('.contador-item');
let hasAnimated = false;

function animateCounters() {
  if (hasAnimated) return;
  hasAnimated = true;

  counters.forEach(counter => {
    const updateCount = () => {
      const target = +counter.getAttribute('data-target');
      const count = +counter.innerText.replace(/\D/g, '');
      const increment = target / 100;

      if (count < target) {
        counter.innerText = Math.ceil(count + increment).toLocaleString();
        setTimeout(updateCount, 20);
      } else {
        counter.innerText = target.toLocaleString();
      }
    };
    updateCount();
  });
}

function revealCardsOnScroll() {
  const triggerPoint = window.innerHeight * 0.85;
  contadorItems.forEach(item => {
    const itemTop = item.getBoundingClientRect().top;
    if (itemTop < triggerPoint) {
      item.classList.add('visible');
      animateCounters();
    }
  });
}

window.addEventListener('scroll', revealCardsOnScroll);
