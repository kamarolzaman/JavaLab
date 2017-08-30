<!-- delete the session here --!>
<!-- use JSP redirect, and redirect to login.jsp back --!>

<html>
    <head>
        <title>Logged out</title>
    </head>
    <body>
        <%
            session.removeAttribute("idNo");
        %>
        Logged out<BR>
        <a href="login.jsp">login.jsp</a>
    </body>
</html>

