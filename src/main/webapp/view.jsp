<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Employees - TechCorp HRMS</title>
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
                <a href="view.jsp" class="active"><i class="fas fa-list"></i> Employees</a>
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
            <li><a href="view.jsp" class="active"><i class="fas fa-list-ul"></i> <span>View Employees</span></a></li>
            <li><a href="add.jsp"><i class="fas fa-user-plus"></i> <span>Add Employee</span></a></li>
            <li><a href="update.jsp"><i class="fas fa-edit"></i> <span>Update Employee</span></a></li>
            <li><a href="delete.jsp"><i class="fas fa-trash"></i> <span>Delete Employee</span></a></li>
            <li><a href="about.jsp"><i class="fas fa-info-circle"></i> <span>About Project</span></a></li>
        </ul>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <div class="container">
            <!-- Page Header -->
            <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 30px;">
                <div>
                    <h1 style="font-size: 2.2rem;">All Employees</h1>
                    <p style="color: var(--text-secondary);">Manage and monitor your workforce</p>
                </div>
                
                <div class="search-box">
                    <input type="text" id="searchInput" placeholder="Search employees..." class="form-control">
                </div>
            </div>

            <div class="card">
                <div class="table-container">
                    <table>
                        <thead>
                            <tr>
                                <th>Employee ID</th>
                                <th>Name</th>
                                <th>Department</th>
                                <th>Designation</th>
                                <th>Email</th>
                                <th>Phone</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><strong>EMP001</strong></td>
                                <td>Rahul Sharma</td>
                                <td>Engineering</td>
                                <td>Senior Software Engineer</td>
                                <td>rahul.sharma@techcorp.com</td>
                                <td>+91 98765 43210</td>
                                <td><span class="status-badge status-active">Active</span></td>
                                <td>
                                    <a href="update.jsp?id=EMP001" class="action-btn btn-edit"><i class="fas fa-edit"></i></a>
                                    <a href="delete.jsp?id=EMP001" class="action-btn btn-delete" data-name="Rahul Sharma"><i class="fas fa-trash"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td><strong>EMP002</strong></td>
                                <td>Priya Patel</td>
                                <td>Human Resources</td>
                                <td>HR Manager</td>
                                <td>priya.patel@techcorp.com</td>
                                <td>+91 87654 32109</td>
                                <td><span class="status-badge status-active">Active</span></td>
                                <td>
                                    <a href="update.jsp?id=EMP002" class="action-btn btn-edit"><i class="fas fa-edit"></i></a>
                                    <a href="delete.jsp?id=EMP002" class="action-btn btn-delete" data-name="Priya Patel"><i class="fas fa-trash"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td><strong>EMP003</strong></td>
                                <td>Amit Kumar</td>
                                <td>Finance</td>
                                <td>Financial Analyst</td>
                                <td>amit.kumar@techcorp.com</td>
                                <td>+91 76543 21098</td>
                                <td><span class="status-badge status-active">Active</span></td>
                                <td>
                                    <a href="update.jsp?id=EMP003" class="action-btn btn-edit"><i class="fas fa-edit"></i></a>
                                    <a href="delete.jsp?id=EMP003" class="action-btn btn-delete" data-name="Amit Kumar"><i class="fas fa-trash"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td><strong>EMP004</strong></td>
                                <td>Neha Gupta</td>
                                <td>Marketing</td>
                                <td>Digital Marketing Executive</td>
                                <td>neha.gupta@techcorp.com</td>
                                <td>+91 65432 10987</td>
                                <td><span class="status-badge status-active">Active</span></td>
                                <td>
                                    <a href="update.jsp?id=EMP004" class="action-btn btn-edit"><i class="fas fa-edit"></i></a>
                                    <a href="delete.jsp?id=EMP004" class="action-btn btn-delete" data-name="Neha Gupta"><i class="fas fa-trash"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td><strong>EMP005</strong></td>
                                <td>Vikram Singh</td>
                                <td>Engineering</td>
                                <td>DevOps Engineer</td>
                                <td>vikram.singh@techcorp.com</td>
                                <td>+91 54321 09876</td>
                                <td><span class="status-badge status-inactive">On Leave</span></td>
                                <td>
                                    <a href="update.jsp?id=EMP005" class="action-btn btn-edit"><i class="fas fa-edit"></i></a>
                                    <a href="delete.jsp?id=EMP005" class="action-btn btn-delete" data-name="Vikram Singh"><i class="fas fa-trash"></i></a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <div style="margin-top: 20px; text-align: center; color: var(--text-secondary); font-size: 0.95rem;">
                Showing 5 of 248 employees
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
</body>
</html>