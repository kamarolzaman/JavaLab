<%@ page import="org.sqlite.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 

<%
    //initialize SQLITE drivers during runtime
    Class.forName("org.sqlite.JDBC");
    //find file path of sqlite
    String dbfilepath = getServletContext().getRealPath("myDatabase.db");
    request.setAttribute("dbfilepath", dbfilepath);
%>

<sql:setDataSource var="db"
                   url="jdbc:sqlite:${dbfilepath}"  /> 
<sql:query dataSource="${db}" var="data">  
    SELECT * from Polls;
</sql:query>  
<c:forEach var="rows" items="${data.rows}">
    Male: <c:out value="${rows.male}"/><BR>
</c:forEach>

<sql:query dataSource="${db}" var="data">  
    SELECT * from Polls;
</sql:query>  
<c:forEach var="rows" items="${data.rows}">
    Female: <c:out value="${rows.female}"/><BR>
</c:forEach>


<sql:query dataSource="${db}" var="data">  
    SELECT * from Polls;
</sql:query>  
<c:forEach var="rows" items="${data.rows}">
    Beautiful: <c:out value="${rows.beautiful}"/><BR>
</c:forEach>


<sql:query dataSource="${db}" var="data">  
    SELECT * from Polls;
</sql:query>  
<c:forEach var="rows" items="${data.rows}">
    Average: <c:out value="${rows.average}"/><BR>
</c:forEach>


<sql:query dataSource="${db}" var="data">  
    SELECT * from Polls;
</sql:query>  
<c:forEach var="rows" items="${data.rows}">
    Ugly: <c:out value="${rows.ugly}"/><BR>
</c:forEach>

