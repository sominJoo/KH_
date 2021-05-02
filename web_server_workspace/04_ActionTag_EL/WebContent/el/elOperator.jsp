<%@page import="java.util.ArrayList"%>
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
	List<String> list2 = new ArrayList<>();
	List<String> list3 = new ArrayList<>();
	list3.add("안녕");
	list3.add("바보야");
	
	pageContext.setAttribute("str1", str1);
	pageContext.setAttribute("str2", str2);
	pageContext.setAttribute("big", big);
	pageContext.setAttribute("small", small);
	pageContext.setAttribute("p1", p1);
	pageContext.setAttribute("p2", p2);
	pageContext.setAttribute("list", list);
	pageContext.setAttribute("list2", list2);
	pageContext.setAttribute("list3", list3);
	
	

	pageContext.setAttribute("strem", null);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>EL Operator</h1>
	<h2>산술연산</h2>
	<p>${big+small}</p>
	<p>${big-small}</p>
	<p>${big-'20'}</p>
	<p>${big*small}</p>
	<p>${big/'20'} ${big div '20'}</p>
	<p>${big%'20'} ${big mod '20'}</p>
		
	<p>${big < small} ${big gt '20'}</p>
	<p>${big > small} ${big lt '20'}</p>
	<p>${big <= small} ${big ge '20'}</p>
	<p>${big >= small} ${big le '20'}</p>
	<p>${big == small} ${big eq '20'}</p>
	<p>${big != small} ${big ne '20'}</p>
	
	<%--문자열 더하기 연산 불가 --%>
	<p>${str1}${str2} ${str1.concat(str2)}</p>
	<hr />
	
	<%-- el의 동등비교 연산은 내부적으로 equals 사용 --%>
	<p><%= str1 == str2 %> ${str1 == str2} ${str1 eq str2}</p> <%-- F T T --%>
	
	<p>Person [${p1 == p2} ${p1 eq p2}]</p> <%-- True => Person vo에서 equals, hascode 오버라이딩 필요  --%>
	
	<%-- 객체가 null이거나 요소가 없는지 여부 --%>
	<p>${empty list}</p>	<%-- T --%>
	<p>${empty list2}</p>	<%-- T --%>
	<p>${empty list3}</p>	<%-- F --%>
	<p>${empty strem} ${not empty strem}</p>	<%-- T F--%>
	
	
	<h2>산술연산</h2>
</body>
</html>