<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:if test="${ empty param.id or empty param.fn}">
    <c:redirect url="login.jsp" >
        <c:param name="errMsg" value="Please Enter ID and First Name" />
    </c:redirect>
</c:if>
