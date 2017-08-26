<%-- 
Sample page untk tunjuk command2 yg boleh gune dalam JSP!
--%>

<%-- Imports --%>
<%@ page import="org.sqlite.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 

<%
    //initialize SQLITE drivers during runtime
    Class.forName("org.sqlite.JDBC");
    //find file path of sqlite
    String dbfilepath = getServletContext().getRealPath("myDatabase.db");
    request.setAttribute("dbfilepath", dbfilepath);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sample Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h1> Employee files </h1>
        <sql:setDataSource var="db"
                           url="jdbc:sqlite:${dbfilepath}"  /> 
        <sql:query dataSource="${db}" var="data">  
            SELECT * from Employees;
        </sql:query>  
        <c:forEach var="rows" items="${data.rows}">
            <c:out value="${rows.id}"/> 
            <c:out value="${rows.first}"/> <c:out value="${rows.last}"/><br/>
        </c:forEach>
    </body>
</html>
