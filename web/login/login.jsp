<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<font color="red">
    <c:if test="${not empty param.errMsg}">
        <c:out value="${param.errMsg}" />
    </c:if>
</font>
<form action="loginAuthenticate.jsp" >
  ID: <input type="text" name="id"/><br/>
  First: <input type="text" name="fn"/><br/>
  <input type="submit" />
</form>
