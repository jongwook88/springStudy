<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<br>
<P>  user : ${pageContext.request.remoteUser} </P>
<br>
<c:if test="${not empty pageContext.request.remoteUser}">
<form action="/logout" method="post">
	<button type="submit" class="btn btn-default">Log out</button>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>
</c:if>
</body>
</html>
