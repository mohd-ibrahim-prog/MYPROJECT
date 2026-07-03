<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Project - TechCorp HRMS</title>
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
            <li><a href="delete.jsp"><i class="fas fa-trash"></i> <span>Delete Employee</span></a></li>
            <li><a href="about.jsp" class="active"><i class="fas fa-info-circle"></i> <span>About Project</span></a></li>
        </ul>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <div class="container">
            <div style="max-width: 1000px; margin: 0 auto;">
                <div class="card">
                    <h1 style="text-align: center; margin-bottom: 40px; font-size: 2.4rem;">About the Project</h1>
                    
                    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 40px;">
                        <!-- Project Overview -->
                        <div>
                            <h2 style="color: var(--primary-color); margin-bottom: 20px;">Project Overview</h2>
                            <p style="line-height: 1.8; color: var(--text-secondary);">
                                The <strong>Employee Management System</strong> is a comprehensive web-based HRMS solution 
                                designed for enterprise-level employee lifecycle management. Built as a Final Year Major Project 
                                using pure Java technologies.
                            </p>
                            
                            <div style="margin: 30px 0;">
                                <h3 style="margin-bottom: 15px;">Key Features</h3>
                                <ul style="list-style: none; padding-left: 0;">
                                    <li style="padding: 8px 0; border-bottom: 1px solid var(--border-color);">
                                        <i class="fas fa-check" style="color: var(--accent-color); margin-right: 12px;"></i>
                                        Secure Login System
                                    </li>
                                    <li style="padding: 8px 0; border-bottom: 1px solid var(--border-color);">
                                        <i class="fas fa-check" style="color: var(--accent-color); margin-right: 12px;"></i>
                                        Employee CRUD Operations
                                    </li>
                                    <li style="padding: 8px 0; border-bottom: 1px solid var(--border-color);">
                                        <i class="fas fa-check" style="color: var(--accent-color); margin-right: 12px;"></i>
                                        Responsive Dashboard
                                    </li>
                                    <li style="padding: 8px 0; border-bottom: 1px solid var(--border-color);">
                                        <i class="fas fa-check" style="color: var(--accent-color); margin-right: 12px;"></i>
                                        Professional Data Tables
                                    </li>
                                    <li style="padding: 8px 0;">
                                        <i class="fas fa-check" style="color: var(--accent-color); margin-right: 12px;"></i>
                                        Real-time Search &amp; Filters
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <!-- Technologies -->
                        <div>
                            <h2 style="color: var(--primary-color); margin-bottom: 20px;">Technologies Used</h2>
                            <div style="display: flex; flex-wrap: wrap; gap: 12px;">
                                <span style="background: #dbeafe; color: #1e40af; padding: 8px 16px; border-radius: 9999px; font-size: 0.95rem;">Java 21</span>
                                <span style="background: #dbeafe; color: #1e40af; padding: 8px 16px; border-radius: 9999px; font-size: 0.95rem;">JSP</span>
                                <span style="background: #dbeafe; color: #1e40af; padding: 8px 16px; border-radius: 9999px; font-size: 0.95rem;">HTML5</span>
                                <span style="background: #dbeafe; color: #1e40af; padding: 8px 16px; border-radius: 9999px; font-size: 0.95rem;">CSS3</span>
                                <span style="background: #dbeafe; color: #1e40af; padding: 8px 16px; border-radius: 9999px; font-size: 0.95rem;">JavaScript</span>
                                <span style="background: #dbeafe; color: #1e40af; padding: 8px 16px; border-radius: 9999px; font-size: 0.95rem;">Maven</span>
                                <span style="background: #dbeafe; color: #1e40af; padding: 8px 16px; border-radius: 9999px; font-size: 0.95rem;">Tomcat 9</span>
                            </div>

                            <div style="margin-top: 40px;">
                                <h3 style="margin-bottom: 16px;">Project Goals</h3>
                                <p style="color: var(--text-secondary); line-height: 1.7;">
                                    To demonstrate proficiency in building scalable, maintainable, and visually appealing 
                                    enterprise web applications using traditional Java EE technologies without modern frameworks.
                                </p>
                            </div>
                        </div>
                    </div>

                    <hr style="margin: 50px 0;">

                    <!-- Team / Developer Info -->
                    <div class="text-center">
                        <h2 style="margin-bottom: 20px;">Developed By</h2>
                        <div style="background: #f8fafc; padding: 30px; border-radius: 12px; max-width: 500px; margin: 0 auto;">
                            <div style="width: 90px; height: 90px; background: linear-gradient(135deg, #1e3a8a, #3b82f6); 
                                        border-radius: 50%; margin: 0 auto 20px; display: flex; align-items: center; 
                                        justify-content: center; color: white; font-size: 2.5rem;">
                                <i class="fas fa-graduation-cap"></i>
                            </div>
                            <h3>Final Year Student</h3>
                            <p style="color: var(--text-secondary);">Computer Science &amp; Engineering</p>
                            <p style="margin-top: 20px; font-size: 0.95rem;">
                                This project showcases clean architecture, responsive design, and production-grade UI/UX for HR processes.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <div class="container">
            <p>&copy; 2026 TechCorp HR Management System | Final Year Major Project</p>
            <p style="margin-top: 8px; font-size: 0.9rem;">All Rights Reserved • Built with ❤️ using Java &amp; JSP</p>
        </div>
    </div>

    <script src="script.js"></script>
</body>
</html>