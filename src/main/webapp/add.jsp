<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Employee - TechCorp HRMS</title>
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
                <a href="add.jsp" class="active"><i class="fas fa-user-plus"></i> Add</a>
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
            <li><a href="add.jsp" class="active"><i class="fas fa-user-plus"></i> <span>Add Employee</span></a></li>
            <li><a href="update.jsp"><i class="fas fa-edit"></i> <span>Update Employee</span></a></li>
            <li><a href="delete.jsp"><i class="fas fa-trash"></i> <span>Delete Employee</span></a></li>
            <li><a href="about.jsp"><i class="fas fa-info-circle"></i> <span>About Project</span></a></li>
        </ul>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <div class="container">
            <div style="max-width: 800px; margin: 0 auto;">
                <!-- Page Header -->
                <div class="card" style="margin-bottom: 30px;">
                    <h1 style="font-size: 2rem; margin-bottom: 8px;">Add New Employee</h1>
                    <p style="color: var(--text-secondary);">Enter employee details below</p>
                </div>

                <div class="card">
                    <form action="view.jsp" method="post" id="addEmployeeForm">
                        <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 24px;">
                            <!-- Personal Information -->
                            <div>
                                <h3 style="margin-bottom: 20px; color: var(--primary-color);">Personal Information</h3>
                                
                                <div class="form-group">
                                    <label for="fullName">Full Name <span style="color: #ef4444;">*</span></label>
                                    <input type="text" id="fullName" name="fullName" class="form-control" required>
                                </div>

                                <div class="form-group">
                                    <label for="employeeId">Employee ID <span style="color: #ef4444;">*</span></label>
                                    <input type="text" id="employeeId" name="employeeId" class="form-control" required>
                                </div>

                                <div class="form-group">
                                    <label for="email">Email Address <span style="color: #ef4444;">*</span></label>
                                    <input type="email" id="email" name="email" class="form-control" required>
                                </div>

                                <div class="form-group">
                                    <label for="phone">Phone Number <span style="color: #ef4444;">*</span></label>
                                    <input type="tel" id="phone" name="phone" class="form-control" required>
                                </div>

                                <div class="form-group">
                                    <label for="dob">Date of Birth</label>
                                    <input type="date" id="dob" name="dob" class="form-control">
                                </div>
                            </div>

                            <!-- Professional Information -->
                            <div>
                                <h3 style="margin-bottom: 20px; color: var(--primary-color);">Professional Details</h3>
                                
                                <div class="form-group">
                                    <label for="department">Department <span style="color: #ef4444;">*</span></label>
                                    <select id="department" name="department" class="form-control" required>
                                        <option value="">Select Department</option>
                                        <option value="Engineering">Engineering</option>
                                        <option value="Human Resources">Human Resources</option>
                                        <option value="Finance">Finance</option>
                                        <option value="Marketing">Marketing</option>
                                        <option value="Operations">Operations</option>
                                        <option value="IT">Information Technology</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="designation">Designation <span style="color: #ef4444;">*</span></label>
                                    <input type="text" id="designation" name="designation" class="form-control" required placeholder="e.g. Software Engineer">
                                </div>

                                <div class="form-group">
                                    <label for="joinDate">Joining Date <span style="color: #ef4444;">*</span></label>
                                    <input type="date" id="joinDate" name="joinDate" class="form-control" required>
                                </div>

                                <div class="form-group">
                                    <label for="salary">Annual Salary (₹)</label>
                                    <input type="number" id="salary" name="salary" class="form-control" placeholder="800000">
                                </div>

                                <div class="form-group">
                                    <label for="status">Employment Status</label>
                                    <select id="status" name="status" class="form-control">
                                        <option value="Active">Active</option>
                                        <option value="On Leave">On Leave</option>
                                        <option value="Probation">Probation</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <!-- Address -->
                        <div class="form-group" style="margin-top: 30px;">
                            <label for="address">Current Address</label>
                            <textarea id="address" name="address" class="form-control" rows="3" placeholder="Full residential address..."></textarea>
                        </div>

                        <!-- Action Buttons -->
                        <div style="margin-top: 40px; display: flex; gap: 16px; justify-content: flex-end;">
                            <a href="dashboard.jsp" class="btn btn-outline">Cancel</a>
                            <button type="submit" class="btn btn-success">
                                <i class="fas fa-save"></i> Save Employee
                            </button>
                        </div>
                    </form>
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
        // Additional validation for Add Employee page
        document.getElementById('addEmployeeForm').addEventListener('submit', function(e) {
            const employeeId = document.getElementById('employeeId').value;
            if (employeeId.length < 4) {
                e.preventDefault();
                window.showToast('Employee ID must be at least 4 characters long.', 'error');
            } else {
                window.showToast('Employee added successfully!', 'success');
            }
        });
    </script>
</body>
</html>