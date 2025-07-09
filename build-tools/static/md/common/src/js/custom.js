document.addEventListener('DOMContentLoaded', function () {
  // Create a button dynamically
  let toggleBtn = document.getElementById('toggle-agda-source');

  if (!toggleBtn) { // If button doesn't exist, create one
    toggleBtn = document.createElement('button');
    toggleBtn.id = 'toggle-agda-source';
    toggleBtn.textContent = 'Show more Agda';
    const header = document.querySelector('.md-header__inner > .md-header__title'); // Example insertion point
    if (header && header.parentNode) {
         header.parentNode.insertBefore(toggleBtn, header.nextSibling);
    } else if (document.body.firstChild) { // Fallback
        document.body.insertBefore(toggleBtn, document.body.firstChild);
    } else {
        document.body.appendChild(toggleBtn);
    }
  }

  // Check localStorage for previous state
  const currentDisplayState = localStorage.getItem('reveal-agda-source') === 'true';
  if (currentDisplayState) {
    document.body.classList.add('reveal-agda-source');
    toggleBtn.textContent = 'Show less Agda';
  } else {
    toggleBtn.textContent = 'Show more Agda';
  }

  toggleBtn.addEventListener('click', function () {
    if (document.body.classList.contains('reveal-agda-source')) {
      document.body.classList.remove('reveal-agda-source');
      toggleBtn.textContent = 'Show more Agda';
      localStorage.setItem('reveal-agda-source', 'false');
    } else {
      document.body.classList.add('reveal-agda-source');
      toggleBtn.textContent = 'Show less Agda';
      localStorage.setItem('reveal-agda-source', 'true');
    }
  });
});
  // Draw the dependency chart on the guide page
const depsChartCanvas = document.getElementById('depsChart');
if (depsChartCanvas) {
    new Chart(depsChartCanvas.getContext('2d'), {
        type: 'bar',
        data: {
            labels: ['agda-stdlib', 'stdlib-classes', 'stdlib-meta', 'agda-sets', 'iog-prelude'],
            datasets: [{
                label: 'Relative Complexity (Lines of Code Estimate)',
                data: [25000, 4000, 3000, 1500, 1000],
                backgroundColor: 'rgba(245, 158, 11, 0.6)',
                borderColor: 'rgba(245, 158, 11, 1)',
                borderWidth: 1
            }]
        },
        options: {
            indexAxis: 'y',
            responsive: true,
            maintainAspectRatio: false,
            plugins: { legend: { display: false } }
        }
    });
}
