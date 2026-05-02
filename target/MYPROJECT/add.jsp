<%@ page import="java.util.*" %>

<html>
<head>
    <title>Add Employee</title>
</head>
<body>

<h2>Add Employee</h2>

<form method="post">
    Name: <input type="text" name="name"><br><br>
    ID: <input type="text" name="id"><br><br>
    Department: <input type="text" name="dept"><br><br>
    Salary: <input type="text" name="salary"><br><br>

    <input type="submit" value="Add">
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

    empList.add(name + " | " + id + " | " + dept + " | " + salary);

    application.setAttribute("empList", empList);

    out.println("<p>Employee Added!</p>");
}
%>

<br>
<a href="index.jsp">Back</a>

</body>
</html>