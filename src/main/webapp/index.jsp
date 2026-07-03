<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HR Portal - Login | TechCorp</title>
    <link rel="stylesheet" href="style.css">
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
        .login-container {
            background: linear-gradient(135deg, #1e3a8a 0%, #3b82f6 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="login-box card">
            <!-- Header -->
            <div class="text-center mb-4">
                <div style="font-size: 3.5rem; margin-bottom: 16px; color: #1e40af;">
                    <i class="fas fa-users"></i>
                </div>
                <h2>TechCorp HRMS</h2>
                <p style="color: #64748b; margin-top: 8px;">Enterprise Employee Management</p>
            </div>

            <form action="dashboard.jsp" method="post" id="loginForm">
                <div class="form-group">
                    <label for="username"><i class="fas fa-user me-2"></i> Username / Employee ID</label>
                    <input type="text" id="username" name="username" 
                           class="form-control" placeholder="Enter your employee ID" 
                           required autofocus>
                </div>

                <div class="form-group">
                    <label for="password"><i class="fas fa-lock me-2"></i> Password</label>
                    <input type="password" id="password" name="password" 
                           class="form-control" placeholder="Enter password" 
                           required>
                </div>

                <div class="form-group" style="display: flex; align-items: center; gap: 8px; margin: 20px 0;">
                    <input type="checkbox" id="remember" name="remember">
                    <label for="remember" style="margin: 0; font-weight: normal; color: #64748b;">Remember me</label>
                </div>

                <button type="submit" class="btn btn-primary w-100" style="padding: 14px; font-size: 1.1rem;">
                    <i class="fas fa-sign-in-alt"></i> Sign In
                </button>
            </form>

            <div class="text-center mt-4">
                <a href="#" onclick="forgotPassword()" style="color: #3b82f6; font-size: 0.95rem;">
                    Forgot Password?
                </a>
            </div>

            <hr style="margin: 30px 0; border-color: #e2e8f0;">

            <div class="text-center" style="color: #64748b; font-size: 0.9rem;">
                Demo Credentials:<br>
                <strong>Username:</strong> admin | <strong>Password:</strong> admin123
            </div>
        </div>
    </div>

    <!-- Footer for Login -->
    <div class="footer" style="position: fixed; bottom: 0; left: 0; right: 0;">
        <div class="container">
            <p>&copy; 2026 TechCorp. All Rights Reserved. | Final Year Project</p>
        </div>
    </div>

    <script src="script.js"></script>
    <script>
        // Additional login-specific JavaScript
        document.getElementById('loginForm').addEventListener('submit', function(e) {
            const username = document.getElementById('username').value.trim();
            const password = document.getElementById('password').value.trim();

            if (username === '' || password === '') {
                e.preventDefault();
                window.showToast('Please enter username and password.', 'error');
                return;
            }

            // Demo credentials check
            if ((username === 'admin' || username === 'emp001') && password === 'admin123') {
                window.showToast('Login successful! Redirecting...', 'success');
            } else {
                e.preventDefault();
                window.showToast('Invalid credentials. Try admin / admin123', 'error');
            }
        });

        function forgotPassword() {
            window.showToast('Password reset link has been sent to your registered email.', 'info');
        }

        // Auto-focus username on load
        window.onload = function() {
            const usernameField = document.getElementById('username');
            if (usernameField) usernameField.focus();
        };
    </script>
</body>
</html>