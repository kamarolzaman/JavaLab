<!-- Connect to database
display all the information about the employee,
grab data using SQL: Select ... where id = "", and display them in the page -->
<c:if test="${empty sessionScope['idNo']}">

</c:if>
Welcome <c:out value="${sessionScope['idNo']}" /><BR><BR>

<%@ page import="org.sqlite.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
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
            SELECT * from Employees where id="${sessionScope['idNo']}";
        </sql:query>  
            
            ID: <c:out value="${rows.id}"/><BR>
            Age: <c:out value="${rows.age}"/><BR> 
            First: <c:out value="${rows.first}"/><BR> 
            Last: <c:out value="${rows.last}"/><br/>
        
<BR><a href="logout.jsp">Logout</a>
