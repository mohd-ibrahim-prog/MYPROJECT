<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - TechCorp HRMS</title>
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
            <li><a href="dashboard.jsp" class="active"><i class="fas fa-tachometer-alt"></i> <span>Dashboard</span></a></li>
            <li><a href="view.jsp"><i class="fas fa-list-ul"></i> <span>View Employees</span></a></li>
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
            <div style="margin-bottom: 30px;">
                <h1 style="font-size: 2.2rem;">Dashboard</h1>
                <p style="color: var(--text-secondary);">Welcome back! Here's what's happening today.</p>
            </div>

            <!-- Statistics Cards -->
            <div class="row" style="display: grid; grid-template-columns: repeat(auto-fit, minmax(240px, 1fr)); gap: 24px; margin-bottom: 40px;">
                <div class="card stats-card">
                    <div class="icon" style="color: #3b82f6;">
                        <i class="fas fa-users"></i>
                    </div>
                    <div class="stats-number">248</div>
                    <div class="stats-label">Total Employees</div>
                </div>
                
                <div class="card stats-card">
                    <div class="icon" style="color: #10b981;">
                        <i class="fas fa-user-check"></i>
                    </div>
                    <div class="stats-number">231</div>
                    <div class="stats-label">Active Employees</div>
                </div>
                
                <div class="card stats-card">
                    <div class="icon" style="color: #f59e0b;">
                        <i class="fas fa-briefcase"></i>
                    </div>
                    <div class="stats-number">18</div>
                    <div class="stats-label">Departments</div>
                </div>
                
                <div class="card stats-card">
                    <div class="icon" style="color: #ef4444;">
                        <i class="fas fa-clock"></i>
                    </div>
                    <div class="stats-number">12</div>
                    <div class="stats-label">On Leave</div>
                </div>
            </div>

            <!-- Quick Actions & Recent Employees -->
            <div style="display: grid; grid-template-columns: 1fr 2fr; gap: 30px;">
                <!-- Quick Actions -->
                <div class="card">
                    <h3 style="margin-bottom: 20px; border-bottom: 2px solid #e2e8f0; padding-bottom: 12px;">
                        Quick Actions
                    </h3>
                    <div style="display: flex; flex-direction: column; gap: 12px;">
                        <a href="add.jsp" class="btn btn-primary">
                            <i class="fas fa-user-plus"></i> Add New Employee
                        </a>
                        <a href="view.jsp" class="btn btn-outline">
                            <i class="fas fa-list"></i> View All Employees
                        </a>
                        <a href="update.jsp" class="btn" style="background-color: #eab308; color: white;">
                            <i class="fas fa-edit"></i> Update Records
                        </a>
                    </div>
                </div>

                <!-- Recent Employees -->
                <div class="card">
                    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 20px;">
                        <h3>Recent Employees</h3>
                        <a href="view.jsp" style="color: #3b82f6; font-weight: 500;">View All →</a>
                    </div>
                    
                    <div class="employee-grid">
                        <!-- Employee Card 1 -->
                        <div class="card" style="padding: 20px;">
                            <div style="display: flex; align-items: center; gap: 16px;">
                                <div style="width: 60px; height: 60px; background: linear-gradient(45deg, #3b82f6, #60a5fa); border-radius: 50%; display: flex; align-items: center; justify-content: center; color: white; font-size: 1.6rem;">
                                    <i class="fas fa-user"></i>
                                </div>
                                <div>
                                    <h4 style="margin-bottom: 4px;">Rahul Sharma</h4>
                                    <p style="color: #64748b; font-size: 0.95rem;">Software Engineer</p>
                                    <span class="status-badge status-active">Active</span>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Employee Card 2 -->
                        <div class="card" style="padding: 20px;">
                            <div style="display: flex; align-items: center; gap: 16px;">
                                <div style="width: 60px; height: 60px; background: linear-gradient(45deg, #10b981, #34d399); border-radius: 50%; display: flex; align-items: center; justify-content: center; color: white; font-size: 1.6rem;">
                                    <i class="fas fa-user"></i>
                                </div>
                                <div>
                                    <h4 style="margin-bottom: 4px;">Priya Patel</h4>
                                    <p style="color: #64748b; font-size: 0.95rem;">HR Manager</p>
                                    <span class="status-badge status-active">Active</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Department Overview -->
            <div class="card mt-4">
                <h3 style="margin-bottom: 24px;">Department Overview</h3>
                <table>
                    <thead>
                        <tr>
                            <th>Department</th>
                            <th>Head Count</th>
                            <th>Vacancies</th>
                            <th>Utilization</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><strong>Engineering</strong></td>
                            <td>92</td>
                            <td>8</td>
                            <td><span style="color: #10b981;">92%</span></td>
                        </tr>
                        <tr>
                            <td><strong>Human Resources</strong></td>
                            <td>24</td>
                            <td>2</td>
                            <td><span style="color: #10b981;">88%</span></td>
                        </tr>
                        <tr>
                            <td><strong>Finance</strong></td>
                            <td>18</td>
                            <td>3</td>
                            <td><span style="color: #f59e0b;">85%</span></td>
                        </tr>
                        <tr>
                            <td><strong>Marketing</strong></td>
                            <td>31</td>
                            <td>4</td>
                            <td><span style="color: #10b981;">91%</span></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <div class="container">
            <p>&copy; 2026 TechCorp HR Management System | Final Year Major Project</p>
            <p style="margin-top: 8px; font-size: 0.9rem;">Built with Java | JSP | Tomcat</p>
        </div>
    </div>

    <script src="script.js"></script>
</body>
</html>