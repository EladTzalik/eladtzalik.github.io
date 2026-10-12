// Track the homepage link separately from visits to the article itself.
document.querySelectorAll('a[href="research-and-ai.html"]').forEach(link => {
    const trackClick = event => {
        if (event.type === 'auxclick' && event.button !== 1) return;
        if (typeof window.gtag === 'function') {
            window.gtag('event', 'research_ai_link_click', {
                link_url: link.href,
                link_text: link.textContent.trim()
            });
        }
    };
    link.addEventListener('click', trackClick);
    link.addEventListener('auxclick', trackClick);
});

// Smooth scrolling for navigation links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();
        const target = document.querySelector(this.getAttribute('href'));
        if (target) {
            target.scrollIntoView({
                behavior: 'smooth',
                block: 'start'
            });
        }
    });
});

// Active navigation highlight on scroll
window.addEventListener('scroll', () => {
    const sections = document.querySelectorAll('section[id]');
    const navLinks = document.querySelectorAll('.nav-links a');
    
    let current = '';
    
    sections.forEach(section => {
        const sectionTop = section.offsetTop;
        const sectionHeight = section.clientHeight;
        if (window.pageYOffset >= sectionTop - 100) {
            current = section.getAttribute('id');
        }
    });
    
    navLinks.forEach(link => {
        link.classList.remove('active');
        if (link.getAttribute('href') === `#${current}`) {
            link.classList.add('active');
        }
    });
});
