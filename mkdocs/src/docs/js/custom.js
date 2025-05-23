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
  const currentDisplayState = localStorage.getItem('show-all-agda-source') === 'true';
  if (currentDisplayState) {
    document.body.classList.add('show-all-agda-source');
    toggleBtn.textContent = 'Show less Agda';
  } else {
    toggleBtn.textContent = 'Show more Agda';
  }

  toggleBtn.addEventListener('click', function () {
    if (document.body.classList.contains('show-all-agda-source')) {
      document.body.classList.remove('show-all-agda-source');
      toggleBtn.textContent = 'Show more Agda';
      localStorage.setItem('show-all-agda-source', 'false');
    } else {
      document.body.classList.add('show-all-agda-source');
      toggleBtn.textContent = 'Show less Agda';
      localStorage.setItem('show-all-agda-source', 'true');
    }
  });
});
