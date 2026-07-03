<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Employee - TechCorp HRMS</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
</head>
<body>
    <!-- Top Navigation -->
    <nav class="top-navbar">
        <div class="container" style="display: flex; align-items: center; justify-content: space-between; width: 100%;">
            <div class="navbar-brand">
                <i class="fas fa-building"></i>
                <span>TechCorp</span>
            </div>
            
            <div class="nav-links">
                <a href="dashboard.jsp"><i class="fas fa-home"></i> Home</a>
                <a href="view.jsp"><i class="fas fa-list"></i> Employees</a>
                <a href="add.jsp"><i class="fas fa-user-plus"></i> Add</a>
            </div>

            <div class="user-info">
                <span>Welcome, <strong>Admin</strong></span>
                <div class="user-avatar">
                    <i class="fas fa-user"></i>
                </div>
            </div>
        </div>
    </nav>

    <!-- Sidebar -->
    <div class="sidebar">
        <div class="sidebar-header">
            <h3><i class="fas fa-users"></i> HRMS</h3>
        </div>
        <ul class="nav-menu">
            <li><a href="dashboard.jsp"><i class="fas fa-tachometer-alt"></i> <span>Dashboard</span></a></li>
            <li><a href="view.jsp"><i class="fas fa-list-ul"></i> <span>View Employees</span></a></li>
            <li><a href="add.jsp"><i class="fas fa-user-plus"></i> <span>Add Employee</span></a></li>
            <li><a href="update.jsp"><i class="fas fa-edit"></i> <span>Update Employee</span></a></li>
            <li><a href="delete.jsp" class="active"><i class="fas fa-trash"></i> <span>Delete Employee</span></a></li>
            <li><a href="about.jsp"><i class="fas fa-info-circle"></i> <span>About Project</span></a></li>
        </ul>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <div class="container">
            <div style="max-width: 700px; margin: 40px auto;">
                <div class="card">
                    <div style="text-align: center; padding: 40px 20px;">
                        <div style="font-size: 4.5rem; color: #ef4444; margin-bottom: 20px;">
                            <i class="fas fa-exclamation-triangle"></i>
                        </div>
                        
                        <h1 style="color: var(--danger-color); margin-bottom: 16px;">Delete Employee</h1>
                        <p style="font-size: 1.1rem; color: var(--text-secondary); max-width: 500px; margin: 0 auto 30px;">
                            This action is permanent and cannot be undone. Please proceed with caution.
                        </p>

                        <div class="card" style="background-color: #fef2f2; border: 1px solid #fecaca; text-align: left; max-width: 500px; margin: 0 auto 30px;">
                            <h4 style="margin-bottom: 12px; color: #b91c1c;">Employee to Delete:</h4>
                            <p><strong>ID:</strong> EMP001</p>
                            <p><strong>Name:</strong> Rahul Sharma</p>
                            <p><strong>Department:</strong> Engineering</p>
                            <p><strong>Designation:</strong> Senior Software Engineer</p>
                        </div>

                        <form action="view.jsp" method="post" id="deleteForm">
                            <div class="form-group" style="max-width: 400px; margin: 0 auto 30px;">
                                <label for="confirmText" style="color: #b91c1c; font-weight: 600;">
                                    Type <strong>DELETE</strong> to confirm
                                </label>
                                <input type="text" id="confirmText" name="confirmText" 
                                       class="form-control" placeholder="DELETE" required>
                            </div>

                            <div style="display: flex; gap: 16px; justify-content: center;">
                                <a href="view.jsp" class="btn btn-outline" style="min-width: 140px;">
                                    Cancel
                                </a>
                                <button type="submit" class="btn btn-danger" style="min-width: 140px;">
                                    <i class="fas fa-trash"></i> Confirm Delete
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <div class="container">
            <p>&copy; 2026 TechCorp HR Management System | Final Year Major Project</p>
        </div>
    </div>

    <script src="script.js"></script>
    <script>
        document.getElementById('deleteForm').addEventListener('submit', function(e) {
            const confirmInput = document.getElementById('confirmText').value.trim();
            
            if (confirmInput !== 'DELETE') {
                e.preventDefault();
                window.showToast('Please type exactly "DELETE" to confirm.', 'error');
            } else {
                window.showToast('Employee has been permanently deleted.', 'success');
            }
        });
    </script>
</body>
</html>