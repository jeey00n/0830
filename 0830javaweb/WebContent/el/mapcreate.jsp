<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.util.*" %>
<%
	/* //Map 데이터 생성
	Map <String, Object> map1 = new HashMap<>();
	map1.put("name", "관리자");
	map1.put("age", 25);
	
	//request에 저장
	request.setAttribute("data", map1); */
	
	vo.Person person = new vo.Person();
	person.setName("남자현");
	person.setAge(43);
	request.setAttribute("data", person);
	
	
	//결과 페이지로 포워딩
	RequestDispatcher dispatcher = request.getRequestDispatcher("mapdisplay.jsp");
		dispatcher.forward(request, response);
%>
</body>
</html>