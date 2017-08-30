<!-- After submitting the form, the user is redirected here --!>

<!--Connect to database (refer to sample.jsp) --!>
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
<!-- if user selected MALE, update the row inside the database to plus 1--!>
<!-- test if parameters is empty--
<c:if test="${ empty param.gender or empty param.opinion}">
    <c:redirect url="login.jsp" ></c:redirect>
</c:if>


<!-- use JSP redirect function to redirect user to result.jsp !-->
<c:choose>
    <c:when test="${param.gender.equals('male')}">
        <sql:update dataSource="${db}" var="data">  
            update Polls SET male = male + 1;
        </sql:update>  
    </c:when>
    <c:when test="${param.gender.equals('female')}">
        <sql:update dataSource="${db}" var="data">  
            update Polls SET female = female + 1;
        </sql:update>  
            <c:out value="lil"/>
    </c:when>
</c:choose>
<c:choose>
    <c:when test="${param.opinion.equals('beautiful')}">
        <sql:update dataSource="${db}" var="data">  
            update Polls SET beautiful = beautiful + 1;
        </sql:update>  
    </c:when>
    <c:when test="${param.opinion.equals('average')}">
        <sql:update dataSource="${db}" var="data">  
            update Polls SET average = average + 1;
        </sql:update>  
    </c:when>
    <c:when test="${param.opinion.equals('ugly')}">
        <sql:update dataSource="${db}" var="data">  
            update Polls SET ugly = ugly + 1;
        </sql:update>  
    </c:when>
</c:choose>
    <c:redirect url="./result.jsp" >
    </c:redirect>