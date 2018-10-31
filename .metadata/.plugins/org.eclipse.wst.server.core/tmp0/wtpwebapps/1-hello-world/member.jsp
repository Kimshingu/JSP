<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--
	a.ts ==트랜스파일링==> a.js ===> html 임포트 ===> 브라우저

	a.jsp ==서블릿 프레임워크가 프리컴파일링==> a.java ==컴파일링==> a.class ====> new a() 
	====> 서블릿컨테이너 ====> 기동,응답 ====> 브라우저
	
	jsp는 서블릿 클래스를 작성하는 또 다른 방법이다.
	- 로직을 구성해야 한다면 서블릿 클래스로 만든다. <-- 로직 우선 개발방식
	- 데이터를 사용하여 화면을 구성해야 한다면 jsp를 사용한다. <--화면 우선 개발방식
-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<H1>member.jsp</H1>
	<!--
		JSP는 WAS에 의해서 파일명 자체를 URL문자열로 사용해서 직접 접근할 수 있다.
	-->
</body>
</html>