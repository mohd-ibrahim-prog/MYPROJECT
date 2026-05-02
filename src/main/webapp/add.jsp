<%@ page import="java.util.*" %>

<html>
<head>
    <title>Add Employee</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

<div class="navbar">Add Employee</div>

<div class="container">
<div class="card">

<form method="post">
    <input type="text" name="name" placeholder="Name">
    <input type="text" name="id" placeholder="ID">
    <input type="text" name="dept" placeholder="Department">
    <input type="text" name="salary" placeholder="Salary">

    <button type="submit">Add</button>
</form>

<%
List<String> empList = (List<String>) application.getAttribute("empList");

if(empList == null){
    empList = new ArrayList<>();
}

String name = request.getParameter("name");

if(name != null){
    String id = request.getParameter("id");
    String dept = request.getParameter("dept");
    String salary = request.getParameter("salary");

    empList.add(name + "," + id + "," + dept + "," + salary);

    application.setAttribute("empList", empList);

    out.println("<p style='color:green;'>Employee Added!</p>");
}
%>

</div>
</div>

</body>
</html>