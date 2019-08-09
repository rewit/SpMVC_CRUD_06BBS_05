<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 심플 메모장</title>
<link rel="stylesheet" type="text/css" 
		href="${rootPath}/resources/css/main.css?ver=201900806">
<link rel="stylesheet" type="text/css" 
		href="${rootPath}/resources/css/list.css?ver=20190725">
<link rel="stylesheet" type="text/css" 
		href="${rootPath}/resources/css/button.css?ver=20190725">
<link rel="stylesheet" type="text/css" 
		href="${rootPath}/resources/css/input.css?ver=20190725">
<link rel="stylesheet" type="text/css" 
		href="${rootPath}/resources/css/view.css?ver=20190726">
<link rel="stylesheet" type="text/css" 
		href="${rootPath}/resources/css/login.css?ver=20190725">
<link rel="stylesheet" type="text/css" 
		href="${rootPath}/resources/css/album.css?ver=20190725">
		
		
		
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(function(){
		$.get("${rootPath}/menu",function(result){
			$("section.menu_box").html(result)
		})
	})

</script>
</head>
<body>
	<section class="menu_box">
	
	</section>
	<p></p>
	<section>
		<c:choose>
			<c:when test="${BODY == 'BBS_LIST'}">
				<%@ include file="/WEB-INF/views/body/bbs/list.jspf" %>
			</c:when>

			<c:when test="${BODY == 'BBS_ALBUM'}">
				<%@ include file="/WEB-INF/views/body/bbs/album.jspf" %>
			</c:when>
			
			<c:when test="${BODY == 'BBS_WRITE'}">
				<%@ include file= "/WEB-INF/views/body/bbs/write.jspf" %>
			</c:when>

			<c:when test="${BODY == 'BBS_VIEW'}">
				<%@ include file= "/WEB-INF/views/body/bbs/view.jspf" %>
			</c:when>
			
			<c:when test="${BODY == 'AJAX'}">
			</c:when>
			
			<c:when test="${BODY == 'AJAX_FORM'}">
			</c:when>
			
			<c:when test="${BODY == 'LOGIN'}">
				<%@ include file= "/WEB-INF/views/body/member/login.jspf" %>
			</c:when>
			
			<c:otherwise>
				<%@ include file="/WEB-INF/views/body/bbs/list.jspf" %>
			</c:otherwise>
		</c:choose>
	</section>
	
</body>

	

</html>