document.addEventListener('DOMContentLoaded', () => {
    const navItems = document.querySelectorAll('.nav-item');
    navItems.forEach(item => {
        item.addEventListener('mouseover', () => {
            item.classList.add('bounce');
        });
        item.addEventListener('animationend', () => {
            item.classList.remove('bounce');
        });
    });
});
