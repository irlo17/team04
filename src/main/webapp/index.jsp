<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %> <%@ page session="false" %>
<%--<%response.sendRedirect("main.do"); %> --%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>링크보내기용</title>
</head>
<body>
<!--승환  -->
<a href="review.do">리뷰관리창</a>
<hr />
<a href="listingDetails.do?shopNumber=2">가게상세페이지</a>
<hr />
<!--	안정은  -->
<a href="main.do">메인</a>
<hr />

<!-- 권소연-->
<a href="dashboardManager.do">관리자페이지</a>
<hr />


<!-- 양준석-->
<form action="listing.do">
<input name="query"/>
<button type="submit">가게리스트 바로가기</button>   
</form>
<hr />

<!-- 이은혜 -->
<a href='totalbookmark.do'>모두의 즐겨찾기</a><hr/>

    
</body>
</html>