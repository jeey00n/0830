<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 2개의 태그 라이브러리 설정 -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- java.util.Date 클래스를 위한 import -->
<%@page import="java.util.*" %>

<c:set var="date" value="<%=new Date() %>"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로케일 설정</title>
</head>
<body>
	<h3>대한민국</h3>
	<!-- value에 국가코드와 언어코드를 입력하면 코드에 맞게 데이터가 출력된다. -->
	<fmt:setLocale value="ko_kr"/>
	금액:<fmt:formatNumber value="10000000" type="currency"/><br/>
	날짜:<fmt:formatDate value="${date }" type="both" dateStyle="full" timeStyle="full"/><br/>
	
</body>
</html>