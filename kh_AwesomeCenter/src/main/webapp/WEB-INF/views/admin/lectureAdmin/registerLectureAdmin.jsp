<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의 등록하기</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  
<style type="text/css">

@import url(//fonts.googleapis.com/earlyaccess/nanumgothic.css);
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

   #admin_body {
      font-family: "Noto Sans Kr", Nanum Gothic, "나눔고딕", sans-serif;
   }
   
   #admin_h2 h2 {
   
      font-weight: 500;
      font-size: 52px;
      margin-top: 50px;
      margin-bottom : 40px;
      letter-spacing: -3px;
      font-family: "Noto Sans Kr";
   
   }
   
    #admin_nvar div {    
      display: inline-block;
      font-size: 14px;
      margin: 2px 12px 0;
      color : #666;
      font-weight: 400;
   }
 
 #container {
 		width:95%;
   		margin: 0 auto;
   		font-size: 10pt;
 }
 
   #main_container{
   		width : 70%;
   		margin: 0 auto;
   }
   
   #line {
   	  border: dashed  1px #bfbfbf;
   	  width : 70%;
   	  margin-top: 30px;
   }
   
    .tblTop {
   		margin: 40px 0 0 5px;
	 	text-align: left;
   }

   .tblTop > h5 {
   		font-weight: bold;
   }
   
   
   .lectureInfo th {
   	  text-align: center;
   	  background-color: #e6e6e6;
   	  color : #404040;
   	  width : 150px;
   	  vertical-align: middle !important;
   }
   
   .lectureInfo td {
   	  text-align: left;

   }
   
   .checkbox-inline {
   	 padding: 0 15px 0 3px;
   }
   
   .categorySelect {
    	padding : 4px;
   }
   
   
   input[name=radioCheck] {
		margin: 5px 5px 4px 0;
	}
   
   .categorySelect {
   		margin-right: 10px;
   		padding: 2px;
   		font-size: 11pt;
   		
   }
   
   #registerBtn, #resetBtn {
   		width : 140px;
   		height : 50px;
   		background-color: #262626;
   		color: white;
   		font-size: 19px;
   		margin: 10px;
   }
   
   #btnDiv {
   		margin: 50px 0 80px 0;
   }
   
   

</style>

</head>
<body id="admin_body">
	<div id="container">
		<div id = "admin_nvar" align="right" style = "margin: 40px 250px 0 0;">   
	         <div style = "border-right: 1px solid #e5e5e5; padding : 0 12px; margin : 0;" ><i class="fa fa-lock" style="font-size:15px; padding:2px 6px 0 0;"></i>관리자 전용 메뉴</div>
	         <div>강좌 등록</div>
      	</div>
	
	  <div align="center" id = "admin_h2">
         <h2>신규 강좌 등록</h2>
      </div>
      
      <hr id="line"/>
      
      <div id="main_container">
      	<table class="table table-bordered lectureInfo" id="lectureInfo1">
      		<tr>
      			<th style="width:350px;">지점</th>
      			<th style="width:350px;">학기</th>
      			<th style="width:350px;">수강기간</th>
      		</tr>
      		
      		<tr>
      			<td style="text-align: center;">본점</td>
      			<td style="text-align: center;">겨울학기</td>
      			<td style="text-align: center;">2020.01.07 ~ 2020.02.06</td>	
      		</tr>    		
      	</table>
      	
      	<table class="table table-bordered lectureInfo" id="lectureInfo2">
      		<tr>
      			<th>강좌명</th>
      			<td>꾸릉이 옷만들기</td>
      			<th>강좌횟수</th>
      			<td>4회</td>
      		</tr>
      		<tr>
      			<th>강좌코드</th>
      			<td>1101</td>
      			<th>강의실</th>
      			<td>본관 101호</td>
      		</tr>
      		<tr>
      			<th>담당 강사명</th>
      			<td>김꾸릉</td>
      			<th>수강정원</th>
      			<td>4명</td>
      		</tr>
      		<tr>
      			<th>수강료</th>
      			<td>50000원</td>
      			<th>재료비</th>
      			<td>10000원</td>
      		</tr>	
      	</table>
      	
      	<table class="table table-bordered lectureInfo" id="lectureInfo3">
      		<tr>
      			<th>접수 상태</th>
      			<td>
      				<label class="checkbox-inline"><input type="radio" value="" class="radioCheck" name="radioCheck" checked/>접수중</label>
      				<label class="checkbox-inline"><input type="radio" value="" class="radioCheck" name="radioCheck"/>접수마감</label>
      				<label class="checkbox-inline"><input type="radio" value="" class="radioCheck" name="radioCheck"/>대기접수</label>
      				<label class="checkbox-inline"><input type="radio" value="" class="radioCheck" name="radioCheck"/>마감</label>
      			</td>     	
      		</tr>
      		<tr>
      			<th>강좌 카테고리</th>
      			<td>
	      			<select class="categorySelect" name="classCategory1" id="classCategory1" >  
							<option value="">1차 분류 선택</option>
							<option value="category01">성인</option>
							<option value="category02">아동</option>					
					</select>   
					
					<select class="categorySelect" name="classCategory2" id="classCategory2" >  
							<option value="">2차 분류 선택</option>
							<option value="category03">베이킹</option>
							<option value="category04">베이킹</option>
							<option value="category05">베이킹</option>
							<option value="category06">베이킹</option>
							<option value="category07">베이킹</option>
							<option value="category08">베이킹</option>
							<option value="category09">베이킹</option>
							<option value="category010">베이킹</option>				
					</select>   
      			</td>     	
      		</tr>
      		<tr>
      			<th>접수 기간</th>
      			<td></td>     	
      		</tr>
      		<tr>
      			<th>문의처</th>
      			<td></td>     	
      		</tr>
      		
      	</table>
      	
      	<table class="table table-bordered lectureInfo" id="lectureInfo4">
      		<tr>
      			<th>강좌 제목</th>
      			<td></td>     	
      		</tr>
      		<tr>
      			<th>첨부 사진1</th>
      			<td></td>     	
      		</tr>
      		<tr>
      			<th>첨부 사진2</th>
      			<td></td>     	
      		</tr>
      	</table>
      	
      	<table class="table table-bordered lectureInfo" id="lectureInfo5">
      		<tr><th style="height: 60px;">강좌 상세 내역</th></tr>
      		<tr><td style="height: 500px;"></td></tr>
      	</table>
     
      <div align="center" id="btnDiv">
      	<button type="button" class="btn" id="registerBtn">등록</button>
      	<button type="button" class="btn" id="resetBtn">취소</button>
      </div>
      
      </div> <!--main_container  -->
   </div>   
</body>
</html>