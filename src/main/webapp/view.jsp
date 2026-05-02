<%@ page import="java.util.*" %>

<html>
<head>
    <title>View Employees</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

<div class="navbar">Employee List</div>

<div class="container">

<table>
<tr>
    <th>Name</th>
    <th>ID</th>
    <th>Dept</th>
    <th>Salary</th>
</tr>

<%
List<String> empList = (List<String>) application.getAttribute("empList");

if(empList != null){
    for(String emp : empList){
        String[] data = emp.split(",");
%>
<tr>
    <td><%=data[0]%></td>
    <td><%=data[1]%></td>
    <td><%=data[2]%></td>
    <td><%=data[3]%></td>
</tr>
<%
    }
}
%>

</table>

</div>

</body>
</html>