<%@ page import="java.util.*" %>

<html>
<head>
    <title>View Employees</title>
</head>
<body>

<h2>Employee List</h2>

<%
List<String> empList = (List<String>) application.getAttribute("empList");

if(empList != null){
    for(String emp : empList){
        out.println("<p>" + emp + "</p>");
    }
}else{
    out.println("<p>No employees found</p>");
}
%>

<br>
<a href="index.jsp">Back</a>

</body>
</html>