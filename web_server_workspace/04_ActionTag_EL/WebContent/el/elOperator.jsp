<%@page import="java.util.List"%>
<%@page import="com.kh.person.model.vo.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String str1 = "안녕";
String str2 = new String("안녕");

int big = 100;
int small = 30;

Person p1 = new Person("honngd", "혼길동", '남', 35, true);
Person p2 = new Person("honngd", "혼길동", '남', 35, true);

List<String> list = null;

pageContext.setAttribute("str1", str1);
pageContext.setAttribute("str2", str2);
pageContext.setAttribute("big", big);
pageContext.setAttribute("small", small);
pageContext.setAttribute("p1", p1);
pageContext.setAttribute("p2", p2);
pageContext.setAttribute("list", list);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>