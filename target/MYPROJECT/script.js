/* ================================================
   script.js - Employee Management System
   Enterprise HRMS Portal - Client Side Logic
   ================================================ */

// Wait for DOM to fully load
document.addEventListener('DOMContentLoaded', function() {
    console.log('%cEmployee Management System initialized successfully.', 'color: #3b82f6; font-weight: bold;');

    // Sidebar Toggle for Mobile
    const sidebarToggle = document.createElement('button');
    sidebarToggle.innerHTML = '☰';
    sidebarToggle.style.cssText = `
        position: fixed; top: 18px; left: 20px; z-index: 1200; 
        background: white; border: none; width: 45px; height: 45px; 
        border-radius: 8px; font-size: 1.4rem; box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        display: none; align-items: center; justify-content: center; cursor: pointer;
    `;
    document.body.appendChild(sidebarToggle);

    const sidebar = document.querySelector('.sidebar');
    if (sidebar) {
        sidebarToggle.addEventListener('click', () => {
            sidebar.classList.toggle('active');
        });

        // Close sidebar when clicking outside on mobile
        document.addEventListener('click', (e) => {
            if (window.innerWidth <= 768 && !sidebar.contains(e.target) && e.target !== sidebarToggle) {
                sidebar.classList.remove('active');
            }
        });
    }

    // Show toggle button on mobile
    function handleResize() {
        if (sidebarToggle) {
            sidebarToggle.style.display = window.innerWidth <= 768 ? 'flex' : 'none';
        }
    }
    window.addEventListener('resize', handleResize);
    handleResize();

    // Form Validation
    function validateForm(form) {
        let isValid = true;
        const requiredFields = form.querySelectorAll('input[required], select[required], textarea[required]');

        requiredFields.forEach(field => {
            const formGroup = field.closest('.form-group');
            if (formGroup) {
                formGroup.classList.remove('error');
            }

            if (!field.value.trim()) {
                isValid = false;
                if (formGroup) formGroup.classList.add('error');
                field.style.borderColor = '#ef4444';
            } else {
                field.style.borderColor = '';
            }
        });

        // Email validation
        const emailField = form.querySelector('input[type="email"]');
        if (emailField && emailField.value) {
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailRegex.test(emailField.value)) {
                isValid = false;
                emailField.style.borderColor = '#ef4444';
            }
        }

        // Phone validation (basic)
        const phoneField = form.querySelector('input[placeholder*="Phone"], input[type="tel"]');
        if (phoneField && phoneField.value) {
            const phoneRegex = /^\+?[\d\s-]{10,15}$/;
            if (!phoneRegex.test(phoneField.value)) {
                isValid = false;
                phoneField.style.borderColor = '#ef4444';
            }
        }

        return isValid;
    }

    // Attach form validation to all forms
    const forms = document.querySelectorAll('form');
    forms.forEach(form => {
        form.addEventListener('submit', function(e) {
            if (!validateForm(this)) {
                e.preventDefault();
                showToast('Please fill all required fields correctly.', 'error');
            } else {
                // Simulate loading state on submit
                const submitBtn = this.querySelector('button[type="submit"]');
                if (submitBtn) {
                    const originalText = submitBtn.innerHTML;
                    submitBtn.disabled = true;
                    submitBtn.innerHTML = 'Processing...';
                    
                    // Reset button after 1.5s (demo)
                    setTimeout(() => {
                        submitBtn.disabled = false;
                        submitBtn.innerHTML = originalText;
                    }, 1500);
                }
            }
        });
    });

    // Live Search Functionality
    const searchInput = document.getElementById('searchInput');
    if (searchInput) {
        searchInput.addEventListener('input', debounce(function() {
            const searchTerm = this.value.toLowerCase().trim();
            const tableRows = document.querySelectorAll('tbody tr');
            
            tableRows.forEach(row => {
                const textContent = row.textContent.toLowerCase();
                row.style.display = textContent.includes(searchTerm) ? '' : 'none';
            });
        }, 300));
    }

    // Delete Confirmation
    const deleteButtons = document.querySelectorAll('.btn-delete, .delete-btn');
    deleteButtons.forEach(btn => {
        btn.addEventListener('click', function(e) {
            e.preventDefault();
            const employeeName = this.getAttribute('data-name') || 'this employee';
            
            if (confirm(`Are you sure you want to delete ${employeeName}? This action cannot be undone.`)) {
                // Simulate deletion with animation
                const row = this.closest('tr');
                if (row) {
                    row.style.transition = 'all 0.4s ease';
                    row.style.opacity = '0';
                    row.style.transform = 'translateX(50px)';
                    
                    setTimeout(() => {
                        row.remove();
                        showToast('Employee deleted successfully.', 'success');
                    }, 400);
                } else {
                    showToast('Employee deleted successfully.', 'success');
                }
            }
        });
    });

    // Toast Notification System
    function showToast(message, type = 'info') {
        const toast = document.createElement('div');
        toast.style.cssText = `
            position: fixed; bottom: 30px; right: 30px; z-index: 2000;
            padding: 16px 24px; border-radius: 10px; color: white;
            font-weight: 500; box-shadow: 0 10px 15px -3px rgba(0,0,0,0.3);
            display: flex; align-items: center; gap: 12px; min-width: 280px;
            animation: slideInToast 0.4s ease;
        `;

        let bgColor = '#3b82f6';
        if (type === 'success') bgColor = '#10b981';
        if (type === 'error') bgColor = '#ef4444';
        if (type === 'warning') bgColor = '#f59e0b';

        toast.style.backgroundColor = bgColor;

        toast.innerHTML = `
            <span>${message}</span>
        `;

        document.body.appendChild(toast);

        setTimeout(() => {
            toast.style.transition = 'all 0.4s ease';
            toast.style.opacity = '0';
            toast.style.transform = 'translateY(20px)';
            setTimeout(() => toast.remove(), 400);
        }, 3500);
    }

    // Add slide in animation for toast
    const style = document.createElement('style');
    style.innerHTML = `
        @keyframes slideInToast {
            from { transform: translateY(60px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }
    `;
    document.head.appendChild(style);

    // Dashboard Cards Animation
    const statCards = document.querySelectorAll('.stats-card');
    statCards.forEach((card, index) => {
        card.style.opacity = '0';
        card.style.transform = 'translateY(30px)';
        
        setTimeout(() => {
            card.style.transition = 'all 0.6s cubic-bezier(0.4, 0, 0.2, 1)';
            card.style.transitionDelay = `${index * 100}ms`;
            card.style.opacity = '1';
            card.style.transform = 'translateY(0)';
        }, 300);
    });

    // Table Row Hover Enhancement
    const tableRows = document.querySelectorAll('tbody tr');
    tableRows.forEach(row => {
        row.addEventListener('mouseenter', () => {
            row.style.backgroundColor = '#f0f9ff';
        });
        row.addEventListener('mouseleave', () => {
            row.style.backgroundColor = '';
        });
    });

    // Fake Real-time Clock in Footer (if present)
    function updateClock() {
        const clockElement = document.getElementById('current-time');
        if (clockElement) {
            setInterval(() => {
                const now = new Date();
                clockElement.textContent = now.toLocaleTimeString('en-US', { 
                    hour: '2-digit', 
                    minute: '2-digit',
                    hour12: true 
                });
            }, 1000);
        }
    }
    updateClock();

    // Keyboard Shortcuts
    document.addEventListener('keydown', function(e) {
        // Ctrl/Cmd + K for search focus
        if ((e.ctrlKey || e.metaKey) && e.key === 'k') {
            e.preventDefault();
            const search = document.getElementById('searchInput');
            if (search) search.focus();
        }
        
        // Escape key to close modals or sidebar
        if (e.key === 'Escape') {
            const sidebar = document.querySelector('.sidebar');
            if (sidebar) sidebar.classList.remove('active');
        }
    });

    // Make all external links open in new tab if needed
    const externalLinks = document.querySelectorAll('a[href^="http"]');
    externalLinks.forEach(link => {
        link.setAttribute('target', '_blank');
        link.setAttribute('rel', 'noopener noreferrer');
    });

    // Helper: Debounce function
    function debounce(func, wait) {
        let timeout;
        return function executedFunction(...args) {
            const later = () => {
                clearTimeout(timeout);
                func.apply(this, args);
            };
            clearTimeout(timeout);
            timeout = setTimeout(later, wait);
        };
    }

    // Expose some functions globally for JSP inline scripts if needed
    window.showToast = showToast;
    window.validateForm = validateForm;

    console.log('%cAll JavaScript features loaded successfully.', 'color: #10b981; font-weight: 500;');
});