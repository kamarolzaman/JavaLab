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
<sql:setDataSource var="db" url="jdbc:sqlite:${dbfilepath}"  />

<sql:query dataSource="${db}" var="data">
    select count(*) as kount from Employees where id='${param.id}' and first='${param.fn}'
</sql:query> 

<c:if test="${ empty param.id or empty param.fn}">
    <c:redirect url="login.jsp" >
        <c:param name="errMsg" value="Please Enter ID and First Name" />
    </c:redirect>
</c:if>

<c:forEach items="${data.rows}" var="r">
    <c:choose>
        <c:when test="${r.kount gt 0}"> <!– greater than 0 -->
            <c:set scope="session" var="idNo" value="${param.id}"/>
            <c:redirect url="menu.jsp"/>
        </c:when>
        <c:otherwise>
            <c:redirect url="login.jsp" >
                <c:param name="errMsg" value="Incorrect ID or First Name" />
            </c:redirect>
        </c:otherwise>
    </c:choose>
 </c:forEach>
