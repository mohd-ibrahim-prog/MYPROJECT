<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Management</title>
    <style>
        body {
            font-family: Arial;
            background: #f4f4f4;
            text-align: center;
        }

        h1 {
            color: #333;
        }

        .container {
            background: white;
            padding: 20px;
            margin: 30px auto;
            width: 400px;
            box-shadow: 0px 0px 10px gray;
            border-radius: 10px;
        }

        input {
            padding: 10px;
            margin: 5px;
            width: 90%;
        }

        button {
            padding: 10px;
            background: green;
            color: white;
            border: none;
            cursor: pointer;
        }

        table {
            margin: auto;
            margin-top: 20px;
            border-collapse: collapse;
            width: 80%;
        }

        th, td {
            padding: 10px;
            border: 1px solid black;
        }

        th {
            background: #333;
            color: white;
        }
    </style>

    <script>
        function addEmployee() {
            let name = document.getElementById("name").value;
            let role = document.getElementById("role").value;

            let table = document.getElementById("empTable");

            let row = table.insertRow();
            row.insertCell(0).innerHTML = name;
            row.insertCell(1).innerHTML = role;
            row.insertCell(2).innerHTML = "<button onclick='deleteRow(this)'>Delete</button>";
        }

        function deleteRow(btn) {
            let row = btn.parentNode.parentNode;
            row.remove();
        }
    </script>
</head>

<body>

<h1>🚀 Employee Management System</h1>

<div class="container">
    <input type="text" id="name" placeholder="Enter Name"><br>
    <input type="text" id="role" placeholder="Enter Role"><br>
    <button onclick="addEmployee()">Add Employee</button>
</div>

<table id="empTable">
    <tr>
        <th>Name</th>
        <th>Role</th>
        <th>Action</th>
    </tr>
</table>

</body>
</html>