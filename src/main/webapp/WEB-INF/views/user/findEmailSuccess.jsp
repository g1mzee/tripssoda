<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" href="<c:url value="/css/user/findEmailSuccess.css"/>">
<title>이메일 찾기</title>

<div class="main">
    <div class="contents">
        <p>회원님의 이메일은 ${email} 입니다.</p>
        <button class="login-btn" type="button">로그인 하러 가기</button>
    </div>
</div>
<script>
    $(".login-btn").on("click", function (){
       location.href = "/login";
    });
</script>


