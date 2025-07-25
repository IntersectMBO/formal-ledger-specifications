document.addEventListener('DOMContentLoaded', function () {
  // --- Agda Source Toggle Button ---
  // Create a button dynamically

  // Define SVG icon for button.
  const agdaIcon = `
    <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-20 -30 367 320">
      <path d="M63.2 72.2c-32.1 32.1-59 59.5-59.7 60.9-1.3 2.4-1.2 3 .6 5.3l2 2.6H61v31.2c0 34 .9 42.9 5.6 57.9 6.9 21.7 18.6 39.7 35.9 55.1 19.6 17.3 42.8 27.4 68.9 29.9 62.9 6.1 119.4-37.2 131.2-100.6 1.3-6.9 1.7-16.8 2.1-43l.4-34 28.3-28.5c15.6-15.7 28.6-29.4 29-30.4.9-2.6-1.9-6.6-4.7-6.6-1.6 0-10.9 8.8-32.9 30.7l-30.7 30.8-.4 38c-.4 30.3-.8 39.4-2.1 45-3.8 16.2-8.2 26.6-16.8 39.4-28.7 42.4-81.9 59.9-129.8 42.6-30.6-11.1-54.7-35.1-66.6-66.2-6-15.9-6.6-20.6-7.1-61.6-.5-37-.6-37.8-2.6-39.2-1.7-1.2-6.5-1.5-25.2-1.5h-23l54.8-54.8C105.4 45.1 130 20 130 19.5c0-.6-.7-2.1-1.6-3.3-3.8-5.4-3.1-6-65.2 56"/>
      <path d="M120.3 44.3C89.4 75.2 88 76.9 91.6 80.4c3.6 3.6 5.2 2.3 36.7-29.2C145.2 34.3 159 20 159 19.4c0-.5-.7-2-1.6-3.2-3.6-5.2-4.9-4.2-37.1 28.1M149.6 44.9c-27.3 27.3-30.8 31.2-30.3 33.3.4 1.4 1.9 3 3.3 3.7 2.7 1.2 3.2.7 34.1-30.1C173.9 34.6 188 19.9 188 19c0-.8-.7-2.3-1.4-3.3-3.2-4.2-5-2.8-37 29.2M237.3 73.2c-32.5 32.5-59.3 59.9-59.6 60.8-.7 2.8 1.1 5.9 3.9 6.6 2.4.6 7.1-3.8 62.5-59.2 61.8-61.8 62.4-62.5 58.7-66.2s-4.5-3-65.5 58M324.8 43.7c-16.6 16.5-30.1 30.9-30.5 32.2-.8 3.2.8 5.5 4.2 5.9 2.5.3 6.1-2.9 32.7-29.5 16.5-16.4 30.4-30.6 30.9-31.6 1.5-2.7-1.4-6.7-4.8-6.7-2.2 0-8.3 5.5-32.5 29.7M324.7 73.8c-21.8 21.8-30.7 31.4-30.7 32.9 0 3.2 4 5.6 7.1 4.4 2.8-1.1 59.1-57.5 60.9-60.9 1.5-3-1-7.2-4.3-7.2-1.6 0-11 8.8-33 30.8M72.1 92.6c-3.7 4.7-2.2 10.3 3.3 12.4 6 2.2 12-4.2 9.6-10.1-2.3-5.6-9.4-6.8-12.9-2.3M101.5 92.5c-3.1 3-3.2 6.6-.2 10.1 3.3 3.8 8.1 3.7 11.5-.1 6.4-7.5-4.4-17-11.3-10M359.3 301.2c-7.6 7.7-8.7 10.2-5.5 13.1 2.9 2.6 5.5 2 9.5-2.1 3.8-3.8 3.8-4 3.5-11.1l-.3-7.2z"/>
    </svg>
  `;

    // The button is styled via its ID in custom.css.
  let toggleBtn = document.getElementById('toggle-agda-source');
  if (!toggleBtn) { // If button doesn't exist, create one
    toggleBtn = document.createElement('button');
    toggleBtn.id = 'toggle-agda-source';
    toggleBtn.innerHTML = 'Show more Agda ' + agdaIcon; // Default text with icon

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
    toggleBtn.innerHTML = 'Show less Agda ' + agdaIcon;
  } else {
    toggleBtn.innerHTML = 'Show more Agda ' + agdaIcon; // Default text with icon
  }

  toggleBtn.addEventListener('click', function () {
    if (document.body.classList.contains('reveal-agda-source')) {
      document.body.classList.remove('reveal-agda-source');
      toggleBtn.innerHTML = 'Show more Agda ' + agdaIcon; // Default text with icon
      localStorage.setItem('reveal-agda-source', 'false');
    } else {
      document.body.classList.add('reveal-agda-source');
      toggleBtn.innerHTML = 'Show less Agda ' + agdaIcon;
      localStorage.setItem('reveal-agda-source', 'true');
    }
  });
});

// --- Dependency Chart on Guide Page ---
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
