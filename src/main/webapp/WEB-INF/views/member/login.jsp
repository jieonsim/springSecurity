<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
<body>
	<div class="container my-5">
		<h2>로그인 폼</h2>
		<form method="post" action="${ctp}/login">
			<table class="table table-bordered text-center">
				<tr>
					<td colspan="2">
						<font size="5">로 그 인</font>
					</td>
				</tr>
				<tr>
					<th>아이디</th>
					<td>
						<input type="text" name="mid" value="atom1234" autofocus required class="form-control" />
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td>
						<input type="password" name="pwd" value="1234" required class="form-control" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="로그인" class="btn btn-success mr-2" />
						<input type="reset" value="다시입력" class="btn btn-warning mr-2" />
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						<!-- 위 히든 네임과 발류는 예약어임 -->
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>