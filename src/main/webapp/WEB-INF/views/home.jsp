<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<%-- <%@ page session="false" %> --%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>
	<hr>
	<form:form name="myform" method="post" action="${ctp}/logout">
		<input type="submit" value="로그아웃" />
	</form:form>
</body>
</html>
