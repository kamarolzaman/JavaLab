<!-- delete the session here --!>
<!-- use JSP redirect, and redirect to login.jsp back --!>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%
            session.removeAttribute("idNo");
        %>
            <c:redirect url="login.jsp" >
                <c:param name="errMsg" value="Logged out!" />
            </c:redirect>

