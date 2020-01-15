<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 강좌 리스트</title>
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
      margin-bottom: 20px;
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
   		width : 90%;
   		margin: 0 auto;
   }
   
  /*  #line {
   	  border: solid 1px #bfbfbf;
   	
   } */
   
   #admin_div {
   		margin : 60px 60px 100px 60px;
   }
   
   #admin_divOption {
   		margin: 7px 3px 7px 0;
   }
   
   .a_categorySelect {
   		height: 25px;
   		margin: 3px 3px 3px 0;
   }
   
   #lectureListTbl {
   	  border-top: solid 1px #404040;
   	  border-bottom: solid 1px #404040;
   }
   
   #lectureListTbl th {
   		height : 45px;
   	    background-color: #e6e6e6;
   	    color : #404040;
   		vertical-align: middle;
   		text-align: center;
   			
   }
   
   #lectureListTbl td { 		
   		vertical-align: middle;
   		text-align: center;
   			
   }
  
  
  .adminBtn {
  	font-size: 10pt;
  	background-color: #262626;
  	color : white;
  	padding: 3px 6px;
  	margin: 3px;
  }
   
  
</style>

</head>
<body id="admin_body">
	<div id="container">
		<div id = "admin_nvar" align="right" style = "margin: 40px 140px 0 0;">   
	         <div style = "border-right: 1px solid #e5e5e5; padding : 0 12px; margin : 0;" ><i class="fa fa-lock" style="font-size:15px; padding:2px 6px 0 0;"></i>관리자 전용 메뉴</div>
	         <div>강좌 리스트</div>
      	</div>
      	
		<div align="center" id="admin_h2">
			<h2>강좌 리스트</h2>
		</div>

		<div id="main_container">
	
		<div id="admin_div">
			<div id="admin_divOption">
				<select class="a_categorySelect" name="a_classCategory1" id="a_classCategory1">
						<option value="">1차 분류 선택</option>
						<option value="category01">성인</option>
						<option value="category02">아동</option>			
				</select>
				
				<select class="a_categorySelect" name="a_classCategory2" id="a_classCategory2">
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
			</div> <!-- admin_divOption -->
		
		<div id="admin_divTbl">
		 <table class="table table-condensed" id="lectureListTbl">
		 	 <thead>
			      <tr>
			        <th>강좌 코드</th>
			        <th>강좌명</th>
			        <th>카테고리1</th>
			        <th>카테고리2</th>
			        <th>강사명</th>
			        <th>수강 기간</th>
			        <th>접수상태</th>
			        <th>비고</th>
			      </tr>
			  </thead>
			  <tbody>
			      <tr>
			        <td>1234</td>
			        <td>꾸릉이 옷 만들기</td>
			        <td>성인</td>
			        <td>반려동물</td>
			        <td>김꾸릉</td>
			        <td>2020.01.07 ~ 2020.02.06</td>
			        <td>접수중</td>
			        <td>
			        	<button type="button" class="btn adminBtn" id="editBtn">수정</button>
			        	<button type="button" class="btn adminBtn" id="detailBtn">상세</button>
			        </td>
			      </tr>		
			      <tr>
			        <td>1234</td>
			        <td>꾸릉이 옷 만들기</td>
			        <td>성인</td>
			        <td>반려동물</td>
			        <td>김꾸릉</td>
			        <td>2020.01.07 ~ 2020.02.06</td>
			        <td>접수중</td>
			        <td>
			        	<button type="button" class="btn adminBtn" id="editBtn">수정</button>
			        	<button type="button" class="btn adminBtn" id="detailBtn">상세</button>
			        </td>
			      </tr>	
			      <tr>
			        <td>1234</td>
			        <td>꾸릉이 옷 만들기</td>
			        <td>성인</td>
			        <td>반려동물</td>
			        <td>김꾸릉</td>
			        <td>2020.01.07 ~ 2020.02.06</td>
			        <td>접수중</td>
			        <td>
			        	<button type="button" class="btn adminBtn" id="editBtn">수정</button>
			        	<button type="button" class="btn adminBtn" id="detailBtn">상세</button>
			        </td>
			      </tr>	    
			   </tbody>
		 </table> <!-- lectureList -->
		</div><!-- admin_divTbl -->
			</div> <!-- admin_div -->
			
		<!-- 	<hr id="line"/> -->
		</div>	
	</div> <!-- container -->
</body>
</html>