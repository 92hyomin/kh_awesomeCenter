<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String ctxPath = request.getContextPath(); %>
<link rel="stylesheet" type="text/css" href="<%=ctxPath%>/resources/css/wantBoard.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	/* $(".title").click(function(){
		goDetail();
	}); */
	if(${requestScope.searchType != ""}){
		$("#searchType").val('${requestScope.searchType}');
	}
});

//글 상세보기
function goDetail(no){
	location.href="<%= request.getContextPath()%>/wishBoardDetail.to?no="+no;
}

function goRegister(){
	location.href="<%= request.getContextPath()%>/writewish.to";
}

function goSrch(){
	var frm = document.srchFrm;
	//frm.method = "POST";
	frm.action = "<%=ctxPath%>/boardmenu3.to";
	frm.submit();
}

</script>

<div id="boardTbl">
	<table class="table" style="border-top: solid 2px gray; border-bottom: solid 1px gray;">
	<h4 style="font-weight: bold; margin-top: 40px; display: inline-block;">게시판3</h4>
	<style>
		#srchArea{
			display: inline-block;
			float: right;
			margin-top: 40px;
		}
		
		#searchType{
			height: 26px;
		}
	</style>
	
	<div id="srchArea">
		<form name="srchFrm">
		<select name="searchType" id="searchType">
			<option value="title">제목</option>
			<option value="username">작성자</option>
		</select>
		
		<input type="text" id="searchWord" name="searchWord" maxlength="20" value="${requestScope.searchWord}"/>
		<button type="button" id="srchBtn" onclick="goSrch()">검색</button>
		</form>
	</div>
	
		<%-- 게시판 상단 내용 --%>
		<thead class="hm_thead">
			<tr>
				<th width="10%">NO.</th>
				<th width="10%">희망점포</th>
				<th width="20%">희망강좌명</th>
				<th width="10%">작성자</th>
				<th width="10%">작성일자</th>
				<th width="10%">조회수</th>
			</tr>
		</thead>
		
		<tbody class="hm_tbody">	
		<c:forEach var="boardvo" items="${boardList}" varStatus="status">	
			<tr>
				<td>${boardvo.no}</td>
				<td>본점</td>
				<td><span class="title" onclick="goDetail('${boardvo.no}');">${boardvo.title}</span></td>
				<td>${boardvo.username}</td>
				<td>${boardvo.writeday}</td>
				<td>${boardvo.viewcount}</td>
			</tr>
		</c:forEach>
		
		</tbody>
	</table>
	
	<div align="center" style="">
		${pageBar}
	</div>
	
	<div id="btnArea">   	
      	<button type="button" class="btns" id="registerBtn" onclick="goRegister();">게시글 등록</button>
     </div>
	
	<form name="goDetailFrm">
		<input type="hidden" name=""/>
	</form>
	
	
</div>