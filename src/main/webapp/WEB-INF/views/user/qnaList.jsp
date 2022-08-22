<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<title>내 QnA</title>
<link rel="stylesheet" href="<c:url value="/css/user/qnaList.css"/>">
<script src="https://kit.fontawesome.com/66af10c0bc.js" crossorigin="anonymous"></script>

<div class="main">
    <div class="contents">
        <h2 class="title">내 Q&A</h2>
        <div class="question">
            <div class="menu">
                <div class="show-question">작성한 질문 (${totalQuestionCnt})</div>
                <div class="show-answer">작성한 답변 (${totalAnswerCnt}) </div>
            </div>
            <c:forEach var="questionDto" items="${questionDtoList}">
                <div class="question-info">
                    <span class="place">여행지역 넣어야 함</span>
                    <span class="answer-status">${questionDto.status=="1" ? "답변완료" : "답변대기"}</span>
                    <div class="question-title">${questionDto.title}</div>
                    <div class="hashtag-wrap">
                        <div class="first-tag">${questionDto.hashtag}</div>
                    </div>
                    <button class="update-btn">수정</button>
                    <button class="delete-btn">삭제</button>
                    <span class="view-cnt">조회수 ${questionDto.viewCnt}</span>
                    <span class="answer-cnt">답변수 ${questionDto.ansCnt}</span>
                </div>
            </c:forEach>
            <div class="paging-container">
                <div class="paging">
                    <c:if test="${totalQuestionCnt==null || totalQuestionCnt==0}">
                        <div> 게시물이 없습니다. </div>
                    </c:if>
                    <c:if test="${totalQuestionCnt!=null && totalQuestionCnt!=0}">
                        <c:if test="${ph.showPrev}">
                            <a class="page" href="<c:url value="/mypage/qnaList${ph.sc.getQueryString(ph.beginPage-1)}"/>"><i class="fa-solid fa-circle-arrow-left"></i></a>
                        </c:if>
                        <c:forEach var="i" begin="${ph.beginPage}" end="${ph.endPage}">
                            <a class="page ${i==ph.sc.page? "paging-active" : ""}" href="<c:url value="/mypage/qnaList${ph.sc.getQueryString(i)}"/>">${i}</a>
                        </c:forEach>
                        <c:if test="${ph.showNext}">
                            <a class="page" href="<c:url value="/mypage/qnaList${ph.sc.getQueryString(ph.endPage+1)}"/>"><i class="fa-solid fa-circle-arrow-right"></i></a>
                        </c:if>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(".show-answer").on("click", function() {
        location.href="/mypage/answerList";
    });

    $(".show-question").on("click", function() {
        location.href="/mypage/qnaList";
    });
</script>

