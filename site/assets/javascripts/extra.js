const sidebarLinks = document.querySelectorAll('.sidebar-link');
const mobileNav = document.getElementById('mobile-nav');
const contentSections = document.querySelectorAll('.content-section');

function setActiveSection(hash) {
    const targetId = hash.substring(1);

    sidebarLinks.forEach(link => {
        if (link.getAttribute('href') === hash) {
            link.classList.add('active');
        } else {
            link.classList.remove('active');
        }
    });

    contentSections.forEach(section => {
        if (section.id === targetId) {
            section.classList.add('active');
        } else {
            section.classList.remove('active');
        }
    });

    if (mobileNav.value !== targetId) {
        mobileNav.value = targetId;
    }
}

function styleInlineCode() {
    const elements = document.querySelectorAll('p, li, h3, h4, td');
    elements.forEach(el => {
        el.innerHTML = el.innerHTML.replace(/`([^`]+)`/g, '<code class="inline-code">$1</code>');
    });
}

function setupCopyButtons() {
    const copyButtons = document.querySelectorAll('.copy-button');
    copyButtons.forEach(button => {
        button.addEventListener('click', () => {
            const wrapper = button.parentElement;
            const code = wrapper.querySelector('.code-block pre code').innerText;

            const tempTextArea = document.createElement('textarea');
            tempTextArea.value = code;
            document.body.appendChild(tempTextArea);
            tempTextArea.select();
            document.execCommand('copy');
            document.body.removeChild(tempTextArea);

            const originalText = button.innerHTML;
            button.innerHTML = '✅ Copied!';
            setTimeout(() => {
                button.innerHTML = originalText;
            }, 2000);
        });
    });
}

sidebarLinks.forEach(link => {
    link.addEventListener('click', function (e) {
        e.preventDefault();
        const hash = this.getAttribute('href');
        setActiveSection(hash);
        window.location.hash = hash;
    });
});

mobileNav.addEventListener('change', function(e) {
    const hash = '#' + e.target.value;
    setActiveSection(hash);
    window.location.hash = hash;
});

document.querySelectorAll('[data-tab-target]').forEach(button => {
    button.addEventListener('click', () => {
        const parent = button.closest('.content-section, main > div');
        const targetId = button.dataset.tabTarget;
        const target = parent.querySelector(`#${targetId}`);

        parent.querySelectorAll('.tab-button').forEach(btn => btn.classList.remove('active'));
        button.classList.add('active');

        parent.querySelectorAll('.tab-content').forEach(content => content.classList.add('hidden'));
        target.classList.remove('hidden');
    });
});

const initialHash = window.location.hash || '#overview';
setActiveSection(initialHash);
styleInlineCode();
setupCopyButtons();

const ctx = document.getElementById('depsChart').getContext('2d');
new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ['agda-stdlib', 'stdlib-classes', 'stdlib-meta', 'agda-sets', 'iog-prelude'],
        datasets: [{
            label: 'Relative Complexity (Lines of Code Estimate)',
            data: [25000, 4000, 3000, 1500, 1000],
            backgroundColor: [
                'rgba(245, 158, 11, 0.6)',
                'rgba(59, 130, 246, 0.6)',
                'rgba(16, 185, 129, 0.6)',
                'rgba(139, 92, 246, 0.6)',
                'rgba(239, 68, 68, 0.6)'
            ],
            borderColor: [
                'rgba(245, 158, 11, 1)',
                'rgba(59, 130, 246, 1)',
                'rgba(16, 185, 129, 1)',
                'rgba(139, 92, 246, 1)',
                'rgba(239, 68, 68, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        indexAxis: 'y',
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
            legend: {
                display: false
            },
            tooltip: {
                backgroundColor: '#1e293b',
                titleFont: { size: 14 },
                bodyFont: { size: 12 },
                padding: 10
            }
        },
        scales: {
            x: {
                beginAtZero: true,
                grid: {
                    color: '#e2e8f0'
                },
                ticks: {
                    color: '#475569'
                }
            },
            y: {
               grid: {
                    display: false
               },
               ticks: {
                    color: '#475569'
               }
            }
        }
    }
});
