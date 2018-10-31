<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.vo.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form>
		<input type="text" name="tel" size="40">
		<input type="submit" value="Send">
	</form>
	<hr>
	<%-- ${param.tel } --%>
	<!--
		IE로 테스트하세요.
		<script>alert("hacking"...)</script>
		무한반복> 청와대 사이트를 0.1초 마다 접속시도
	-->
	<!--사용자로부터 받은 무자열을 그대로 사용할 때는 반드시 Escape한 다음에 사용한다.  -->
	<c:out value="${param.tel}"> </c:out>
	
</body>
</html>